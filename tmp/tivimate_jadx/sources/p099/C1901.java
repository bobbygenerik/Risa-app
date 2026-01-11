package p099;

import j$.util.DesugarTimeZone;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p085.InterfaceC1733;
import p085.InterfaceC1736;

/* renamed from: ˆˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1901 implements InterfaceC1733 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final SimpleDateFormat f7604;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        f7604 = simpleDateFormat;
        simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
    }

    @Override // p085.InterfaceC1735
    /* renamed from: ﹳٴ */
    public final void mo4342(Object obj, Object obj2) {
        ((InterfaceC1736) obj2).mo4682(f7604.format((Date) obj));
    }
}
