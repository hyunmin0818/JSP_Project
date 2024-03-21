package com.movie.web.services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import com.movie.web.dto.MovieDTO;

public interface MovieMapper {
   
	List<MovieDTO> selectMoviesByViewCount(LocalDate startDate, LocalDate endDate);
	
	// 데이터베이스와의 상호작용을 추상화하여 서비스 계층에서 데이터 액세스 코드와 비즈니스 로직을 분리합니다. 
	//실제 구현 클래스에서는 이 인터페이스를 구현하여 데이터베이스에 대한 쿼리를 실행하고 결과를 반환
	
	
	// 액션(또는 컨트롤러) 클래스와 데이터 액세스 클래스로 분리. 각 클래스가 자신의 역할에만 집중. 
	//액션 클래스는 클라이언트 요청을 처리하고 응답을 생성, 데이터 액세스 클래스는 데이터베이스와의 상호작용에만 집중. => 코드의 응집성이 향상

	// 유지보수 용이성: 액션 클래스와 데이터 액세스 클래스가 분리되면 코드가 더욱 모듈화되어 유지보수 용이. 
	//각 클래스는 독립적으로 변경될 수 있으므로 한 클래스의 수정이 다른 클래스에 영향을 미치는 것을 최소화할 수 있다.

	// 데이터 액세스 관련 클래스는 데이터베이스와의 상호작용을 담당하기 때문에 동일한 데이터 액세스 로직을 다른 액션 클래스에서 재사용할 수 있다. 
	// 코드의 재사용성 향상
}
