# Capstone Design Project / Any Where Map
이 저장소는 AWM v2의 메타 저장소입니다.

## 0. AWM v2 Major Updates
AWM v2는 다음과 같은 주요 변경 사항을 포함하며, AWM v1의 업그레이드 버전입니다:
* MSA 아키텍처 채택:
  * 확장성과 높은 장애 허용도를 제공합니다.
* 역방향 프록시 서버 추가::
  * 외부로 부터 Gateway를 보호합니다.
* 로드 밸런서 추가:
  * 로드 밸런서를 통해 서버의 보안과 확장성, 처리 속도를 올릴 수 있습니다.
* 인센티브 도입:
  * 인센티브 시스템을 통해 사용자 참여를 증가시킵니다.
* 인센티브를 사용할 수 있는 스토어 추가:
  * 사용자가 인센티브를 활용할 수 있는 플랫폼을 제공합니다.
* 등록된 위치 정보에 대한 검증 시스템 추가:
  * 위치 데이터의 정확성과 신뢰성을 보장합니다.
* 위치 정보에 대한 내비게이션 시스템 추가:
  * 사용자가 특정 위치로 쉽게 이동할 수 있도록 돕습니다.
* 이미지 처리:
  * 지능형 이미지 처리 및 분석으로 비즈니스를 강화합니다.

## 1. 저장소 분류
|저장소|설명|URL|
|:---|:---|:---|
|awm-v2-proxy|외부 접근으로부터 게이트웨이를 보호합니다.|[link](https://github.com/ahr-i/awm-v2-proxy)|
|awm-v2-gateway|클라이언트의 초기 접점 역할을 합니다.|[link](https://github.com/ahr-i/awm-v2-gateway)|
|awm-v2-authentication-server|클라이언트 인증을 처리하고 JWT 토큰을 발급하거나 검증합니다.|[link](https://github.com/ahr-i/awm-v2-authentication-server)|
|awm-v2-location-manager|장소에 대한 조회, 등록, 수정 정보 기능을 제공합니다.|[link](https://github.com/ahr-i/awm-v2-location-manager)|
|awm-v2-image-processing-server|이미지 기반 위치 검색을 포함한 이미지 처리 서비스를 제공합니다.|[link](https://github.com/ahr-i/awm-v2-image-processing-server)|
|awm-v2-community-server|사용자가 글을 작성하고, 보고, 수정할 수 있는 커뮤니티를 제공합니다.|[link](https://github.com/ahr-i/awm-v2-community-server)|
|awm-v2-chat-server|사용자 간의 실시간 메시징 기능을 제공합니다.|[link](https://github.com/ahr-i/awm-v2-chat-server)|
|awm-v2-store-server|상점에서 판매되는 아이템의 등록과 구매 처리를 담당합니다.|[link](https://github.com/ahr-i/awm-v2-store-server)|
|awm-v2-user-manager|유저의 프로필, 친구 찾기 기능 등 유저와 관련된 기능을 수행합니다.|[link](https://github.com/ahr-i/awm-v2-user-manager)|
|awm-v2-token-manager|블록체인에 연결되어 결제 처리와 관련된 API를 제공합니다.|[link](https://github.com/ahr-i/awm-v2-token-manager)|
|awm-v2-blockchain|토큰 히스토리와 스마트 계약을 관리합니다.|[link](https://github.com/ahr-i/awm-v2-blockchain)|
|awm-v2-database|MySQL 데이터베이스를 사용합니다. 테이블 구조가 문서화되어 있습니다.|[link](https://github.com/ahr-i/awm-v2-database)|
|awm-v2-monitor|전체 시스템의 상태를 모니터링할 수 있습니다.|[link](https://github.com/ahr-i/awm-v2-monitor)|
|awm-v1-backend|AWM v1 입니다. 모놀리식 아키텍처를 사용하여 구현되었습니다.|[link](https://github.com/ahr-i/awm-v1-backend)|

## 2. 프로젝트 정보
|카테고리|프로젝트 ID|프로젝트 이름|공개범위|
|:---:|:---:|:---:|:---:|
|Capstone Design Project|#2|Any Where Map|공개|

### 2.1 아키텍처
![msa_architecture](./doc/file/image/readme_2_1.png)
![msa_service](./doc/file/image/readme_2_1_1.png)

## 3. 프로젝트 브리프

### 3.1 목적
1. 유저에게 필요한 시설의 위치 정보를 제공.
2. 일반 지도에 표시되지 않는 위치 정보 표시.
3. 유저간 소통으로 빠른 위치 정보 실시간 업데이트.

### 3.2 기대 효과
1. 단순히 필수 위치 정보만 보여주는 것이 아닌 유저간 장소 공유 기능을 이용하여 기존의 지도로는 알 수 없었던 위치 정보를 알 수 있음.
2. 방대한 양의 데이터가 있는 지도를 유저의 편의에 맞게 커스텀 기능을 사용하여 필요한 정보만 필터링하여 볼 수 있음.
3. 유저가 직접적으로 특정 시설의 정보를 수정할 수 있게 함으로써 장소에 대한 정보가 실시간으로 갱신됨.

### 3.3 핵심 타겟
1. 10대 ~ 40대 유저

### 3.4 사용 형식
1. 모바일 앱

### 3.5 수행 조건
1. 프로그램 및 클라우드 DB 설계.
2. 테스트를 위한 테스트 환경 구축.
3. 화면 구성 중 설정과 고객센터는 4뎁스 이하로 한다.
4. 화면 구성 중 설정과 고객센터를 제외한 화면은 3뎁스 이하로 한다.

### 3.6 기능
* 장소 공유 기능
  * 유저 간 장소에 대한 정보 실시간 공유.
  * 장소에 대해 사진으로 추가 설명 가능.
* 유저 커뮤니티
  * 유저 간 서로의 댓글에 대한 답글, 추천 기능.
* 지도 기능
  * 키워드 필터링, 커스터마이징 기능.
  * 네비게이션을 통한 길 안내 시스템.
* 장소 정보 DB
  * 장소에 대한 정보나 사용자 평가 검색.
* 외국어 제공
* 텍스트 외 다양한 검색 기능
  * 음성 인식 기능.
* 장소 공개 범위 설정 기능
  * 개인적인 장소 나만보기 기능.
* 유저 관리 시스템
  * 신고 기능을 통해 악성 유저 관리.
  * 유저 간 신고, 차단 기능.
* 지도 인터페이스
  * 거리 및 경로, 시간 표시.
  * 주변시설 표시.

## 4. 문서
<a href="https://docs.google.com/spreadsheets/d/1nEh904hfjWP3kfXu41WGr4Z9NcRg2JVtGt0FnFGhD2U/edit#gid=0" target="_blank">
  <img src="https://img.shields.io/badge/SRS-34A853?style=flat-square&logo=googlesheets&logoColor=FFFFFF"/>
</a>
<a href="https://docs.google.com/spreadsheets/d/1_wGeAE6OmdCe5b821GUyuTooV0xRWut6cA69srGbYf0/edit#gid=0" target="_blank">
  <img src="https://img.shields.io/badge/IA-34A853?style=flat-square&logo=googlesheets&logoColor=FFFFFF"/>
</a>
<a href="https://www.figma.com/file/3eOsg53BKqmMiH1lCBfjLY/Romantic-Map?type=design&node-id=0%3A1&mode=design&t=JUGS0GNPDJYG7kQl-1" target="_blank">
  <img src="https://img.shields.io/badge/Figma-F24E1E?style=flat-square&logo=figma&logoColor=FFFFFF"/>
</a>