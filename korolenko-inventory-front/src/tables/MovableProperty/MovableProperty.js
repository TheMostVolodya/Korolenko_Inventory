import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link, useParams } from 'react-router-dom';

export default function MovableProperty() {

    const [property, setProperty] = useState([]);

    const [value, setValue] = useState('')

    const filteredInvertNumb = property.filter(prop => {
        return prop.invertNumber.includes(value)
    })

    useEffect(() => {
        loadProperty();
    }, []);

    const loadProperty = async () => {
        const result = await axios.get("http://192.168.0.100:8080/api/showAllMovProperty")
        setProperty(result.data);
    }

    const deletePropery = async (id) => {
        await axios.delete(`http://192.168.0.100:8080/api/MovProperty/${id}`)
        loadProperty()
    }


    ///////////////////////////////////////////////сортировка
    const [order, setorder] = useState("ASC");
    const sortingString = (col) => {
        if (order === "ASC") {
            const sorted = [...property].sort((a, b) =>
                a[col] > b[col] ? 1 : -1
            );
            setProperty(sorted);
            setorder("DSC")
        }
        if (order === "DSC") {
            const sorted = [...property].sort((a, b) =>
                a[col] < b[col] ? 1 : -1
            );
            setProperty(sorted);
            setorder("ASC")
        }
    };
    /////////////////////////////////////////////////////////



    return (
        <div className='container-fluid'>
            <div className='py-4'>
                <Link class="btn btn-secondary" type="button" to="/addMovProperty" >Добавить элемент в таблицу</Link>
                <br></br>

                <form style={{
                    margin: "auto",
                    padding: "15px",
                    maxWidth: "400px",
                    alignContent: "center",
                }}
                    className="d-flex input-group w-auto"
                >
                    <input
                        type="text"
                        className="form-control"
                        placeholder="Поиск по инвертарному номеру"
                        onChange={(event) => setValue(event.target.value)}
                    />
                </form>

                <table className="table border shadow">
                    <thead>
                        <tr>
                            <th scope="col" >#</th>
                            <th onClick={() => sortingString("name")} >Наименование</th>
                            <th scope="col" >Инвертарный номер</th>
                            <th onClick={() => sortingString("room")} >Местоположение</th>
                            <th scope="col" >Амортизационная группа</th>
                            <th onClick={() => sortingString("dateOfRegistration")} >Дата принятия к учету</th>
                            <th scope="col" >Срок полезного использования</th>
                            <th onClick={() => sortingString("price")} >Балансовая стоимость</th>
                            <th scope="col" >Количество</th>
                            <th scope="col" >Выполнить</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            filteredInvertNumb.map((property, index) => (
                                <tr>
                                    <th scope="row" key={index}>{index + 1}</th>
                                    <td>{property.name}</td>
                                    <td>{property.invertNumber}</td>
                                    <td>@{property.room}</td>
                                    <td>{property.depreciationGroup}</td>
                                    <td>{property.dateOfRegistration}</td>
                                    <td>{property.usefulLife}</td>
                                    <td>{property.price}</td>
                                    <td>{property.quantity}</td>
                                    <td>
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <Link type="button" class="btn btn-success"
                                                to={`/editMovProperty/${property.id}`}

                                            >Edit</Link>
                                            <button type="button" class="btn btn-danger"
                                                onClick={() => deletePropery(property.id)}
                                            >Delete</button>
                                        </div>
                                    </td>
                                </tr>
                            ))
                        }
                    </tbody>
                </table>
            </div>

        </div >
    )
}
