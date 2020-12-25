package ROOT.VO;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.io.Serializable;

public class AdminVO implements Serializable {

    private String admId;
    private String admPwd;
    private String admName;
    private String admEmail;
    private String admPhone;
    private String admDateOfBirth;

    // getter
    public String getAdmId() { return admId; }
    public String getAdmPwd() { return admPwd; }
    public String getAdmName() { return admName; }
    public String getAdmEmail() { return admEmail; }
    public String getAdmPhone() { return admPhone; }
    public String getAdmDateOfBirth() { return admDateOfBirth; }

    // setter
    public void setAdmId(String admId) { this.admId = admId; }
    public void setAdmPwd(String admPwd) { this.admPwd = admPwd; }
    public void setAdmName(String admName) { this.admName = admName; }
    public void setAdmEmail(String admEmail) { this.admEmail = admEmail; }
    public void setAdmPhone(String admPhone) { this.admPhone = admPhone; }
    public void setAdmDateOfBirth(String admDateOfBirth) { this.admDateOfBirth = admDateOfBirth; }
}
