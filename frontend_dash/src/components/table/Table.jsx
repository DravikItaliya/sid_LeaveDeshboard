import "./table.scss";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import React, { useState } from 'react'
import axios from 'axios'


//let img_link='https://picsum.photos/200';

const List = () => {
  // const rows = [
  //   {
  //     id: 1069,
  //     product: "Ram Patel",
  //     img: "https://m.media-amazon.com/images/I/81bc8mA3nKL._AC_UY327_FMwebp_QL65_.jpg",
  //     customer: "ITS",
  //     date: "1 March",
  //     amount: 1,
  //     method: "AL",
  //     status: "Approved",
  //   },
  //   {
  //     id: 2054,
  //     product: "Krish Patel",
  //     img: "https://m.media-amazon.com/images/I/31JaiPXYI8L._AC_UY327_FMwebp_QL65_.jpg",
  //     customer: "ITS",
  //     date: "2 March",
  //     amount: 3,
  //     method: "CL",
  //     status: "Pending",
  //   },
  //   {
  //     id: 6700,
  //     product: "Jinish Rathod",
  //     img: "https://m.media-amazon.com/images/I/71kr3WAj1FL._AC_UY327_FMwebp_QL65_.jpg",
  //     customer: "ITS",
  //     date: "10 March",
  //     amount: 7,
  //     method: "SL",
  //     status: "Approved",
  //   },
  //   {
  //     id: 8900,
  //     product: "Mansi Mahida",
  //     img: "https://m.media-amazon.com/images/I/71wF7YDIQkL._AC_UY327_FMwebp_QL65_.jpg",
  //     customer: "ITS",
  //     date: "20 March",
  //     amount: 50,
  //     method: "ML",
  //     status: "Approved",
  //   },
  //   {
  //     id: 5040,
  //     product: "Karan Patel",
  //     img: "https://m.media-amazon.com/images/I/81hH5vK-MCL._AC_UY327_FMwebp_QL65_.jpg",
  //     customer: "ITS",
  //     date: "13 March",
  //     amount: 7,
  //     method: "AL",
  //     status: "Pending",
  //   }
  // ];

  const [news, setNews] = useState([])

  const FetchSailor = () => {
    axios.get("http://localhost:8090/api/orders")
      .then((response) => {
        console.log(response.data[0]);
        setNews(response.data)
      })
  }

  return (
    <>
    {/* <div className="container my-3">
    <div className="row">
      <div className="col-4">
        <button className='btn btn-primary' onClick={FetchSailor}>FetchSailor</button>
      </div>
    </div>
  </div> */}

{FetchSailor()}
   
    <TableContainer component={Paper} className="table">
      <Table sx={{ minWidth: 650 }} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell className="tableCell">flowid</TableCell>
            <TableCell className="tableCell">rank</TableCell>
            <TableCell className="tableCell">name</TableCell>
            <TableCell className="tableCell">pno</TableCell>
            <TableCell className="tableCell">department</TableCell>
            <TableCell className="tableCell">leavetype</TableCell>
            {/* <TableCell className="tableCell">requestingDays</TableCell>
            <TableCell className="tableCell">multileaveType1</TableCell>
            <TableCell className="tableCell">multileaveDays1</TableCell>
            <TableCell className="tableCell">multileavefromdate1</TableCell>
            <TableCell className="tableCell">multileavetodate1</TableCell>
            <TableCell className="tableCell">multileaveType2</TableCell>
            <TableCell className="tableCell">multileaveDays2</TableCell>
            <TableCell className="tableCell">multileavefromdate2</TableCell>

            <TableCell className="tableCell">multileavetodate2</TableCell>
            <TableCell className="tableCell">service</TableCell>
            <TableCell className="tableCell">Reason_for</TableCell>
            <TableCell className="tableCell">ofyear</TableCell>
            <TableCell className="tableCell">tt</TableCell>
            <TableCell className="tableCell">prefixfrom</TableCell>
            <TableCell className="tableCell">prefixto</TableCell>
            <TableCell className="tableCell">prefixbeing</TableCell>
            <TableCell className="tableCell">interfixfrom</TableCell>
            <TableCell className="tableCell">interfixto</TableCell>
            <TableCell className="tableCell">interfixbeing</TableCell>
            <TableCell className="tableCell">suffixfrom</TableCell>
            <TableCell className="tableCell">suffixto</TableCell>
            <TableCell className="tableCell">suffixbeing2</TableCell> */}
          </TableRow>
     
      {/* ,[encash]
      ,[Total_Encash]
      ,[date_commencement]
      ,[pages]
      ,[leave_station]
      ,[Railway_station]
      ,[leave_address]
      ,[police_station]
      ,[mobileno]
      ,[email]
      ,[officiating_officer]
      ,[curent_leave]
      ,[adharno]
      ,[nok_name]
      ,[nok_mobile]
      ,[military_hos]
      ,[co_name]
      ,[co_relation]
      ,[co_address]
      ,[zila_sainik_board]
      ,[post_office]
      ,[remarks]
      ,[civil_hos]
      ,[date_initiate]
      ,[isActive]
      ,[State]
      ,[declaration]
      ,[declaredate]
      ,[leaveyearAL]
      ,[leaveyearCL]
      ,[leaveyearENCASH]
      ,[firstdose]
      ,[firstdosedate]
      ,[seconddose]
      ,[seconddosedate]
      ,[Div_Officer]
      ,[Dept_Officer]
      ,[MedicalCategory]
      ,[MedicalOption]
      ,[MedicalWEFDate]
      ,[AMEStatus]
      ,[AMEDate]
      ,[Release_Duo]
      ,[Release_Duo_Date]
      ,[gxnumber]
      ,[gxdate]
      ,[gxoption] */}
        </TableHead>
        <TableBody>
          {news.map((row) => (
            <TableRow key={row.id}>
              <TableCell className="tableCell">{row.flowid}</TableCell>
              <TableCell className="tableCell">
                <div className="cellWrapper">
                  {/* <img src={img_link} alt="" className="image" /> */}
                  {row.rank}
                </div>
              </TableCell>
              <TableCell className="tableCell">{row.name}</TableCell>
              <TableCell className="tableCell">{row.pno}</TableCell>
              <TableCell className="tableCell">{row.department}</TableCell>
              <TableCell className="tableCell">{row.leavetype}</TableCell>
              <TableCell className="tableCell">
                <span className={`status ${row.status}`}>{row.pno}</span>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
    </>
  );
  
};

export default List;
