package p453;

import p317.InterfaceC3910;

/* renamed from: ﾞˉ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC5369 implements InterfaceC3910 {
    f20444("REQUEST"),
    /* JADX INFO: Fake field, exist only in values array */
    EF2("PING"),
    f20439("RESPONSE"),
    f20440("FAULT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF8("WORKING"),
    /* JADX INFO: Fake field, exist only in values array */
    EF10("NOCALL"),
    f20445("REJECT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF14("ACK"),
    /* JADX INFO: Fake field, exist only in values array */
    EF1("CL_CANCEL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF5("FACK"),
    /* JADX INFO: Fake field, exist only in values array */
    EF7("CANCEL_ACK"),
    f20442("BIND"),
    f20443("BIND_ACK"),
    /* JADX INFO: Fake field, exist only in values array */
    EF153("BIND_NAK"),
    /* JADX INFO: Fake field, exist only in values array */
    EF166("ALTER_CONTEXT"),
    /* JADX INFO: Fake field, exist only in values array */
    EF179("ALTER_CONTEXT_RESP"),
    /* JADX INFO: Fake field, exist only in values array */
    EF196("SHUTDOWN"),
    /* JADX INFO: Fake field, exist only in values array */
    EF209("CO_CANCEL"),
    /* JADX INFO: Fake field, exist only in values array */
    EF222("ORPHANED");


    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f20446;

    EnumC5369(String str) {
        this.f20446 = r2;
    }

    @Override // p317.InterfaceC3910
    public final long getValue() {
        return this.f20446;
    }
}
