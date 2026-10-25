week7_DB - assignment

Week 07

1. 과제 소개 - Docker에서 mariadb를 실행하고 교수님께서 주신 개인db에 접속해서 sql 실습을 진행했다. 
Book, product, order 테이블을 만들고 데이터를 추가했다. Select 와 where로 원하는 데이터를 조회하고 update로 상품의 가격과 재고 주문 수량을 수정하고 delete로 주문과 상품을 삭제하고 결과를 확인하는 과정을 거쳤다.
실습한 sql은 내 파일에 정리하고 git으로 커밋하였다.

2. 실습 환경 - 운영체제: macOS
- 로컬 DB 환경: Docker Desktop에서 MariaDB 컨테이너 실행
- Docker 이미지: mariadb:latest
- 로컬 데이터베이스: webservice
- SQL 실습 도구: DBeaver 26.2.3
- 실습 서버: walab.handong.edu
- 접속 포트: 3306
- 개인 데이터베이스: W26_22400132
- 버전 관리: Git, GitHub

3. 핵심 키워드 - database(데이터를 저장하고 관리하는 공간)
- table(행과 열로 데이터를 저장하는 구조)
- primary key(각 행을 구분하는 고유 값)
- create table(테이블 생성 명령)
- insert(데이터 추가 명령)
- select(데이터 조회 명령)
- where(조회 혹은 변경할 데이터의 조건 지정 문)
- update(기존 데이터 수정 명령)
- order by(조회 결과 정령 문)
- docker(컨테이너 실행 후 관리 도구)
- mariadb(관계형 데이터베이스 관리 시스템)
- dbeaver(데이터베이스에 접속해서 sql 실행 도구)

4. 배운 점
1. docker로 mariadb 컨테이너를 실행하고 docker ps 명령으로 실행 상태와 포트 연결을 확인하는 방법을 배웠다.

2. create table로 테이블을 만들고 자료형과 primary key, not null, default 등의 조건을 지정하는 방법을 배웠다.

3. insert, select, update, delete로 데이터를 추가·조회·수정·삭제하는 방법을 익혔다. 특히 update와 delete에서는 where로 대상을 정확하게 지정해야 한다는 점을 배웠다.

4. product와 orders의 product_id를 통해 상품과 주문을 연결할 수 있다는 것을 배웠다. 하나의 상품에 여러 주문이 연결될 수 있어 1:n 관계를 이해할 수 있었다.

5. 같은 insert를 여러 번 실행하면 같은 내용의 데이터가 추가될 수 있다는 것을 경험했다. 실행할 sql 범위를 확인하고 수정이나 삭제 후에는 select로 결과를 확인하는 습관이 필요하다는 것을 배웠다.