//getElementById
let pElement=document.getElementById('demo');
console.log(pElement);
pElement.textContent='This is changed p tag';
//getElementByClassName()
let divElements=document.getElementsByClassName('blue');
console.log(divElements);
let pElements=document.getElementsByTagName('p');
console.log(pElements)
console.log(pElements[1]);
//getElementsByTagName
let nameElements=document.getElementsByName('helement');

console.log(nameElements);
let demoElement=document.querySelector('#demo'); //single element
console.log(demoElement);
let blueclassElement=document.querySelectorAll('.blue'); //multiple element
console.log(blueclassElement);
let buttonElement=document.createElement('button');
buttonElement.textContent='Click Me';
console.log(buttonElement);
document.body.appendChild(buttonElement);

let buttonElement1=document.getElementById('buttonEle');
// buttonElement1.className='add';
buttonElement1.classList='add add1';
console.log("=====================================");
let pElementData=document.getElementById('demo1');
pElementData.style.color='Blue';
//console.log(pElementData);
//pElementData.className='blue';
pElementData.classList='blue fonts';
document.getElementById('table').innerHTML= `

              <table>
                <tr>
                  <td>Name</td>
                  <td>Age</td>
                </tr>

                <tr>
                <td>John</td>
                <td>14</td>
              </tr>

              <tr>
                 <td>Dinga</td>
                 <td>20</td>
            </tr>
             
            <tr>
               <td>Sundri</td>
               <td>22</td>
            </tr>

            </table>

`
let tableElement=document.createElement('table');
let tr1=document.createElement('tr');
let trd1=document.createElement('td');
trd1.textContent='Name';
let trd2=document.createElement('td');
trd2.textContent='Age';
tr1.appendChild(trd1);
tr1.appendChild(trd2);

let tr2=document.createElement('tr');
let trd3=document.createElement('td');
trd3.textContent='John';
let trd4=document.createElement('td');
trd4.textContent='14';
tr2.appendChild(trd3);
tr2.appendChild(trd4);

let tr3=document.createElement('tr');
let trd5=document.createElement('td');
trd5.textContent='Dinga';
let trd6=document.createElement('td');
trd6.textContent='20';
tr3.appendChild(trd5);
tr3.appendChild(trd6);

let tr4=document.createElement('tr');
let trd7=document.createElement('td');
trd7.textContent='Sundri';
let trd8=document.createElement('td');
trd8.textContent='22';
tr4.appendChild(trd7);
tr4.appendChild(trd8);


tableElement.appendChild(tr1);
tableElement.appendChild(tr2);
tableElement.appendChild(tr3);
tableElement.appendChild(tr4);
document.body.appendChild(tableElement)
