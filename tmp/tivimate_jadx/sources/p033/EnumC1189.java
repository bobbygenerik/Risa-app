package p033;

/* renamed from: ʼﹳ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC1189 {
    f4622("SMB2_NEGOTIATE"),
    f4612("SMB2_SESSION_SETUP"),
    f4615("SMB2_LOGOFF"),
    f4623("SMB2_TREE_CONNECT"),
    f4617("SMB2_TREE_DISCONNECT"),
    f4621("SMB2_CREATE"),
    f4616("SMB2_CLOSE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF14("SMB2_FLUSH"),
    f4625("SMB2_READ"),
    f4620("SMB2_WRITE"),
    /* JADX INFO: Fake field, exist only in values array */
    EF7("SMB2_LOCK"),
    f4624("SMB2_IOCTL"),
    f4626("SMB2_CANCEL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF13("SMB2_ECHO"),
    f4613("SMB2_QUERY_DIRECTORY"),
    /* JADX INFO: Fake field, exist only in values array */
    EF0("SMB2_CHANGE_NOTIFY"),
    f4627("SMB2_QUERY_INFO"),
    f4614("SMB2_SET_INFO"),
    /* JADX INFO: Fake field, exist only in values array */
    EF234("SMB2_OPLOCK_BREAK");


    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final EnumC1189[] f4619 = new EnumC1189[19];

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f4628;

    static {
        for (EnumC1189 enumC1189 : values()) {
            f4619[enumC1189.f4628] = enumC1189;
        }
    }

    EnumC1189(String str) {
        this.f4628 = r2;
    }
}
