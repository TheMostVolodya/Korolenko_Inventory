import React, { useEffect, useState } from 'react'
import axios from 'axios'
import { Link, useParams } from 'react-router-dom';

export default function MashinAndEquipment() {

    const [mashin, setMashin] = useState([])

    const [value, setValue] = useState('')

    const filteredInvertNumb = mashin.filter(mashin => {
        return mashin.invertNumber.includes(value)
    })



    useEffect(() => {
        loadMashin();
    }, []);

    const loadMashin = async () => {
        const result = await axios.get("http://192.168.0.100:8080/api/showAllMashAndEqui")
        setMashin(result.data);
    }

    const deleteMashin = async (id) => {
        await axios.delete(`http://192.168.0.100:8080/api/MashAndEqui/${id}`)
        loadMashin()
    }



    ///////////////////////////////////////////////сортировка
    const [order, setorder] = useState("ASC");
    const sortingTable = (col) => {
        if (order === "ASC") {
            const sorted = [...mashin].sort((a, b) =>
                a[col] > b[col]? 1 : -1
            );
            setMashin(sorted);
            setorder("DSC")
        }
        if (order === "DSC") {
            const sorted = [...mashin].sort((a, b) =>
                a[col] < b[col]? 1 : -1
            );
            setMashin(sorted);
            setorder("ASC")
        }
    };
        /////////////////////////////////////////////////////////

    return (
        <div className='container-fluid'>
            <div className='py-4'>
                <Link class="btn btn-secondary" type="button" to="/addMashAndEqui" >Добавить элемент в таблицу</Link>
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
                            <th onClick={() => sortingTable("name")} >Наименование</th>
                            <th scope="col" >Инвертарный номер</th>
                            <th onClick={() => sortingTable("room")} >Местоположение</th>
                            <th scope="col" >Амортизационная группа</th>
                            <th onClick={() => sortingTable("dateOfRegistration")} >Дата принятия к учету</th>
                            <th scope="col" >Срок полезного использования</th>
                            <th onClick={() => sortingTable("price")} >Балансовая стоимость</th>
                            <th scope="col" >Количество</th>
                            <th scope="col" >Выполнить</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            filteredInvertNumb.map((mashin, index) => (
                                <tr>
                                    <th scope="row" key={index}>{index+1}</th>
                                    <td>{mashin.name}</td>
                                    <td>{mashin.invertNumber}</td>
                                    <td>@{mashin.room}</td>
                                    <td>{mashin.depreciationGroup}</td>
                                    <td>{mashin.dateOfRegistration}</td>
                                    <td>{mashin.usefulLife}</td>
                                    <td>{mashin.price}</td>
                                    <td>{mashin.quantity}</td>
                                    <td>
                   
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            {/* <button type="button" class="btn btn-dark">View</button> */}
                                            <Link type="button" class="btn btn-success"
                                            to={`/editMashAndEqui/${mashin.id}`}
                                            
                                            >Edit</Link>
                                            <button type="button" class="btn btn-danger"
                                                onClick={() => deleteMashin(mashin.id)}
                                            >Delete</button>
                                        </div>
                                    </td>
                                </tr>
                            ))
                        }
                    </tbody>
                </table>
            </div>

        </div>
    )
}
