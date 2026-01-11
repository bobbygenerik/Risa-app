package p056;

/* renamed from: ʽﹳ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1500 extends AbstractC1506 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C1505 f5946;

    public C1500(C1505 c1505) {
        this.f5946 = c1505;
    }

    @Override // p056.AbstractC1506
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String mo4301() {
        C1508 c1508 = (C1508) this.f5946.f5957.get();
        if (c1508 == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + c1508.f5969 + "]";
    }
}
