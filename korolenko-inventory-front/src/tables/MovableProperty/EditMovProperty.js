import axios from 'axios';
import React, { useEffect, useState } from 'react'
import { Link, useNavigate, useParams } from 'react-router-dom';


export default function EditMovProperty() {

    let navigate = useNavigate()

    const { id } = useParams()

    const [movProp, setMovProp] = useState({
        name: "",
        invertNumber: "",
        room: "",
        depreciationGroup: "",
        dateOfRegistration: "",
        usefulLife: "",
        price: "",
        quantity: ""
    })

    const { name, invertNumber, room, depreciationGroup, dateOfRegistration, usefulLife, price, quantity } = movProp

    const onInputChange = (e) => {
        setMovProp({ ...movProp, [e.target.name]: e.target.value })
    };

    useEffect(() => {
        loadProperty();
    }, []);

    const onSubmit = async (e) => {
        e.preventDefault();
        await axios.put(`http://192.168.0.100:8080/api/MovProperty/${id}`, movProp)
        navigate("/showAllMovProperty")
    }

    const loadProperty = async () => {
        const result = await axios.get(`http://192.168.0.100:8080/api/MovProperty/${id}`)
        setMovProp(result.data)
    }

    return (
        <div className="container">
            <div className="row">
                <div className="col-md-6 offset-md-3 border rounded p-4 mt-2 shadow">
                    <h2 className="text-center m-4">Изменение элемента</h2>
                    <form onSubmit={(e) => onSubmit(e)}>

                        <div className="mb-3">
                            <label htmlFor="Name" className="form-label">
                                Именование
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Введите название средства"
                                name="name"
                                value={name}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="InvertNumber" className="form-label">
                                Инвертарный номер
                            </label>
                            <input

                                type={"text"}
                                className="form-control"
                                placeholder="Введите инвертарный номер"
                                name="invertNumber"
                                value={invertNumber}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>

                        <div className="mb-3">
                            <label htmlFor="Room" className="form-label">
                                Метка
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Именование помещения"
                                name="room"
                                value={room}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>



                        <div className="mb-3">
                            <label htmlFor="DepreciationGroup" className="form-label">
                                Амортизационная группа
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Номер амортизационной группы"
                                name="depreciationGroup"
                                value={depreciationGroup}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="DateOfRegistration" className="form-label">
                                Дата принятия к учету
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Введите в формате ДД.ММ.ГГГГ"
                                name="dateOfRegistration"
                                value={dateOfRegistration}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="UsefulLife" className="form-label">
                                Срок полезного использования
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Введите срок"
                                name="usefulLife"
                                value={usefulLife}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="Price" className="form-label">
                                Балансовая стоимость
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Введите балансовую стоимость"
                                name="price"
                                value={price}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="Quantity" className="form-label">
                                Количество
                            </label>
                            <input
                                type={"text"}
                                className="form-control"
                                placeholder="Введите количество"
                                name="quantity"
                                value={quantity}
                                onChange={(e) => onInputChange(e)}
                            />
                        </div>
                        <button type="submit" className="btn btn-outline-info">
                            Сохранить
                        </button>
                        <Link type="submit" className="btn btn-outline-danger mx-2" to="/showAllMovProperty">
                            Отмена
                        </Link>
                    </form>
                </div>
            </div>
        </div>
    )
}
