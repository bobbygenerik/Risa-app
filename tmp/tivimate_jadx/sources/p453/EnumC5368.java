package p453;

import java.util.HashMap;

/* renamed from: ﾞˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC5368 {
    f20437("UNKNOWN"),
    /* JADX INFO: Fake field, exist only in values array */
    EF15("NCA_S_FAULT_OTHER"),
    /* JADX INFO: Fake field, exist only in values array */
    EF24("NCA_S_FAULT_ACCESS_DENIED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF34("NCA_S_FAULT_NDR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF44("NCA_S_FAULT_CANT_PERFORM"),
    /* JADX INFO: Fake field, exist only in values array */
    EF54("NCA_S_FAULT_INT_DIV_BY_ZERO"),
    /* JADX INFO: Fake field, exist only in values array */
    EF65("NCA_S_FAULT_ADDR_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF80("NCA_S_FAULT_FP_DIV_ZERO"),
    /* JADX INFO: Fake field, exist only in values array */
    EF96("NCA_S_FAULT_FP_UNDERFLOW"),
    /* JADX INFO: Fake field, exist only in values array */
    EF112("NCA_S_FAULT_FP_OVERFLOW"),
    /* JADX INFO: Fake field, exist only in values array */
    EF128("NCA_S_FAULT_INVALID_TAG"),
    /* JADX INFO: Fake field, exist only in values array */
    EF144("NCA_S_FAULT_INVALID_BOUND"),
    /* JADX INFO: Fake field, exist only in values array */
    EF160("NCA_RPC_VERSION_MISMATCH"),
    /* JADX INFO: Fake field, exist only in values array */
    EF176("NCA_UNSPEC_REJECT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF192("NCA_S_BAD_ACTID"),
    /* JADX INFO: Fake field, exist only in values array */
    EF208("NCA_WHO_ARE_YOU_FAILED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF224("NCA_MANAGER_NOT_ENTERED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF240("NCA_S_FAULT_CANCEL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF256("NCA_S_FAULT_ILL_INST"),
    /* JADX INFO: Fake field, exist only in values array */
    EF272("NCA_S_FAULT_FP_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF288("NCA_S_FAULT_INT_OVERFLOW"),
    /* JADX INFO: Fake field, exist only in values array */
    EF304("NCA_S_FAULT_PIPE_EMPTY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF320("NCA_S_FAULT_PIPE_CLOSED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF334("NCA_S_FAULT_PIPE_ORDER"),
    /* JADX INFO: Fake field, exist only in values array */
    EF348("NCA_S_FAULT_PIPE_DISCIPLINE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF362("NCA_S_FAULT_PIPE_COMM_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF376("NCA_S_FAULT_PIPE_MEMORY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF390("NCA_S_FAULT_CONTEXT_MISMATCH"),
    /* JADX INFO: Fake field, exist only in values array */
    EF404("NCA_S_FAULT_REMOTE_NO_MEMORY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF418("NCA_INVALID_PRES_CONTEXT_ID"),
    /* JADX INFO: Fake field, exist only in values array */
    EF432("NCA_UNSUPPORTED_AUTHN_LEVEL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF446("NCA_INVALID_CHECKSUM"),
    /* JADX INFO: Fake field, exist only in values array */
    EF460("NCA_INVALID_CRC"),
    /* JADX INFO: Fake field, exist only in values array */
    EF474("NCS_S_FAULT_USER_DEFINED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF488("NCA_S_FAULT_TX_OPEN_FAILED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF502("NCA_S_FAULT_CODESET_CONV_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF516("NCA_S_FAULT_OBJECT_NOT_FOUND"),
    /* JADX INFO: Fake field, exist only in values array */
    EF530("NCA_S_FAULT_NO_CLIENT_STUB"),
    /* JADX INFO: Fake field, exist only in values array */
    EF544("NCA_OP_RNG_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF558("NCA_UNK_IF"),
    /* JADX INFO: Fake field, exist only in values array */
    EF572("NCA_WRONG_BOOT_TIME"),
    /* JADX INFO: Fake field, exist only in values array */
    EF586("NCA_S_YOU_CRASHED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF600("NCA_PROTO_ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    EF614("NCA_OUT_ARGS_TOO_BIG"),
    /* JADX INFO: Fake field, exist only in values array */
    EF628("NCA_SERVER_TOO_BUSY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF642("NCA_UNSUPPORTED_TYPE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF656("E_NOTIMPL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF670("E_POINTER"),
    /* JADX INFO: Fake field, exist only in values array */
    EF684("E_AOBRT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF698("E_UNEXPECTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF712("RPC_E_SERVERFAULT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF726("RPC_E_DISCONNECTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF740("RPC_E_INVALID_IPID"),
    /* JADX INFO: Fake field, exist only in values array */
    EF754("RPC_E_TIMEOUT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF768("DISP_E_MEMBERNOTFOUND"),
    /* JADX INFO: Fake field, exist only in values array */
    EF782("DISP_E_UNKNOWNNAME"),
    /* JADX INFO: Fake field, exist only in values array */
    EF796("DISP_E_BADPARAMCOUNT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF810("CBA_E_MALFORMED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF824("CBA_E_UNKNOWNOBJECT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF838("CBA_E_INVALIDID"),
    /* JADX INFO: Fake field, exist only in values array */
    EF852("CBA_E_INVALIDCOOKIE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF866("CBA_E_QOSTYPEUNSUPPORTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF880("CBA_E_QOSVALUEUNSUPPORTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF894("CBA_E_NOTAPPLICABLE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF908("CBA_E_LIMITVIOLATION"),
    /* JADX INFO: Fake field, exist only in values array */
    EF922("CBA_E_QOSTYPENOTAPPLICABLE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF936("CBA_E_OUTOFPARTNERACCOS"),
    /* JADX INFO: Fake field, exist only in values array */
    EF950("CBA_E_FLAGUNSUPPORTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF964("CBA_E_FRAMECOUNTUNSUPPORTED"),
    /* JADX INFO: Fake field, exist only in values array */
    EF978("CBA_E_MODECHANGE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF992("E_OUTOFMEMORY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1006("E_INVALIDARG"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1020("RPC_S_PROCNUM_OUT_OF_RANGE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1034("OR_INVALID_OXID");


    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final HashMap f20435 = new HashMap();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f20438;

    static {
        for (EnumC5368 enumC5368 : values()) {
            f20435.put(Integer.valueOf(enumC5368.f20438), enumC5368);
        }
    }

    EnumC5368(String str) {
        this.f20438 = r2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return name().toLowerCase();
    }
}
