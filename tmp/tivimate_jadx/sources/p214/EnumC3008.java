package p214;

import java.util.HashMap;

/* renamed from: ˏʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC3008 {
    /* JADX INFO: Fake field, exist only in values array */
    EF0("NetrConnectionEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF3("NetrFileEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF6("NetrFileGetInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF9("NetrFileClose"),
    /* JADX INFO: Fake field, exist only in values array */
    EF12("NetrSessionEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF15("NetrSessionDel"),
    /* JADX INFO: Fake field, exist only in values array */
    EF7("NetrShareAdd"),
    f11487("NetrShareEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF104("NetrShareEnumSticky"),
    /* JADX INFO: Fake field, exist only in values array */
    EF115("NetrShareGetInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF126("NetrShareSetInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF137("NetrShareDel"),
    /* JADX INFO: Fake field, exist only in values array */
    EF148("NetrShareDelSticky"),
    /* JADX INFO: Fake field, exist only in values array */
    EF163("NetrShareDelStart"),
    /* JADX INFO: Fake field, exist only in values array */
    EF176("NetrShareDelCommit"),
    /* JADX INFO: Fake field, exist only in values array */
    EF189("NetrShareCheck"),
    /* JADX INFO: Fake field, exist only in values array */
    EF202("NetrServerGetInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF215("NetrServerSetInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF228("NetrServerDiskEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF241("NetrServerStatisticsGet"),
    /* JADX INFO: Fake field, exist only in values array */
    EF254("NetrRemoteTOD"),
    /* JADX INFO: Fake field, exist only in values array */
    EF267("NetrServerTransportAdd"),
    /* JADX INFO: Fake field, exist only in values array */
    EF280("NetrServerTransportAddEx"),
    /* JADX INFO: Fake field, exist only in values array */
    EF293("NetrServerTransportEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF306("NetrServerTransportDel"),
    /* JADX INFO: Fake field, exist only in values array */
    EF319("NetrServerTransportDelEx"),
    /* JADX INFO: Fake field, exist only in values array */
    EF332("NetrpGetFileSecurity"),
    /* JADX INFO: Fake field, exist only in values array */
    EF345("NetrpSetFileSecurity"),
    /* JADX INFO: Fake field, exist only in values array */
    EF358("NetprPathType"),
    /* JADX INFO: Fake field, exist only in values array */
    EF371("NetprPathCanonicalize"),
    /* JADX INFO: Fake field, exist only in values array */
    EF384("NetprPathCompare"),
    /* JADX INFO: Fake field, exist only in values array */
    EF397("NetprNameValidate"),
    /* JADX INFO: Fake field, exist only in values array */
    EF410("NetprNameCanonicalize"),
    /* JADX INFO: Fake field, exist only in values array */
    EF423("NetprNameCompare"),
    /* JADX INFO: Fake field, exist only in values array */
    EF436("NetrDfsGetVersion"),
    /* JADX INFO: Fake field, exist only in values array */
    EF449("NetrDfsCreateLocalPartition"),
    /* JADX INFO: Fake field, exist only in values array */
    EF462("NetrDfsDeleteLocalPartition"),
    /* JADX INFO: Fake field, exist only in values array */
    EF475("NetrDfsSetLocalVolumeState"),
    /* JADX INFO: Fake field, exist only in values array */
    EF488("NetrDfsCreateExitPoint"),
    /* JADX INFO: Fake field, exist only in values array */
    EF501("NetrDfsModifyPrefix"),
    /* JADX INFO: Fake field, exist only in values array */
    EF514("NetrDfsDeleteExitPoint"),
    /* JADX INFO: Fake field, exist only in values array */
    EF527("NetrDfsFixLocalVolume"),
    /* JADX INFO: Fake field, exist only in values array */
    EF540("NetrDfsManagerReportSiteInfo"),
    /* JADX INFO: Fake field, exist only in values array */
    EF553("NetrServerAliasAdd"),
    /* JADX INFO: Fake field, exist only in values array */
    EF566("NetrServerAliasEnum"),
    /* JADX INFO: Fake field, exist only in values array */
    EF579("NetrServerAliasDel"),
    /* JADX INFO: Fake field, exist only in values array */
    EF592("NetrShareDelEx");


    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final HashMap f11485 = new HashMap();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final short f11488;

    static {
        for (EnumC3008 enumC3008 : values()) {
            f11485.put(Short.valueOf(enumC3008.f11488), enumC3008);
        }
    }

    EnumC3008(String str) {
        this.f11488 = (short) r2;
    }
}
