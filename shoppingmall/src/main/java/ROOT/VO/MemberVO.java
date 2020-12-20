package ROOT.VO;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class MemberVO implements Serializable {

    private static final long serialVersionUID = 7857661706767062157L;

    @NotNull(message = "ID는 3자리 이상 20자리 이하로 입력해주세요.")
    @Size(min = 3, max = 20)
    private String userId;

    @NotNull(message = "비밀번호는 8자리 이상 20자리 이하로 입력해주세요.")
    @Size(min = 8, max = 20)
    private String userPwd;

    @NotNull
    @Size(min = 1, max = 10)
    private String userName;

    @NotNull
    @Size(min = 9, max = 256)
    private String email;

    @NotNull
    @Size(min = 9, max = 11)
    private String phone;

    @NotNull
    private String dateOfBirth;


    // getter
    public String getUserId() { return userId; }
    public String getUserPwd() { return userPwd; }
    public String getUserName() { return userName; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getDateOfBirth() { return dateOfBirth; }

    // setter
    public void setUserId(String userId) { this.userId = userId; }
    public void setUserPwd(String userPwd) { this.userPwd = userPwd; }
    public void setUserName(String userName) { this.userName = userName; }
    public void setEmail(String email) { this.email = email; }
    public void setPhone(String phone) { this.phone = phone; }
    public void setDateOfBirth(String dateOfBirth) { this.dateOfBirth = dateOfBirth; }
}
