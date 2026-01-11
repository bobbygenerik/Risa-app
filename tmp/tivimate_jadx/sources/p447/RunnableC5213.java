package p447;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.InterfaceC0462;
import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ﹶﾞ.ʻʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5213 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f19574;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19575 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ boolean f19576;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f19577;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f19578;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f19579;

    public RunnableC5213(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC0462 interfaceC0462, String str, String str2, boolean z) {
        this.f19579 = interfaceC0462;
        this.f19578 = str;
        this.f19574 = str2;
        this.f19576 = z;
        this.f19577 = appMeasurementDynamiteService;
    }

    public RunnableC5213(C5240 c5240, C5217 c5217, boolean z, C5294 c5294, Bundle bundle) {
        this.f19579 = c5217;
        this.f19576 = z;
        this.f19578 = c5294;
        this.f19574 = bundle;
        Objects.requireNonNull(c5240);
        this.f19577 = c5240;
    }

    public RunnableC5213(C5253 c5253, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.f19579 = atomicReference;
        this.f19578 = str;
        this.f19574 = str2;
        this.f19576 = z;
        Objects.requireNonNull(c5253);
        this.f19577 = c5253;
    }

    public RunnableC5213(C5269 c5269, boolean z, Uri uri, String str, String str2) {
        this.f19576 = z;
        this.f19579 = uri;
        this.f19578 = str;
        this.f19574 = str2;
        this.f19577 = c5269;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0107 A[Catch: RuntimeException -> 0x00e1, TRY_ENTER, TryCatch #1 {RuntimeException -> 0x00e1, blocks: (B:34:0x0107, B:36:0x0112, B:39:0x011f, B:41:0x0125, B:42:0x013f, B:43:0x0148, B:47:0x0150, B:50:0x0169, B:51:0x0178, B:53:0x0170, B:54:0x018b, B:56:0x0191, B:58:0x0197, B:60:0x019d, B:62:0x01a3, B:64:0x01ab, B:66:0x01b3, B:68:0x01b9, B:71:0x01cb, B:76:0x0090, B:78:0x0096, B:80:0x00a0, B:82:0x00a6, B:84:0x00ac, B:86:0x00b2, B:88:0x00ba, B:90:0x00c2, B:92:0x00ca, B:94:0x00d2, B:95:0x00e8, B:97:0x00f6), top: B:75:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0150 A[Catch: RuntimeException -> 0x00e1, TryCatch #1 {RuntimeException -> 0x00e1, blocks: (B:34:0x0107, B:36:0x0112, B:39:0x011f, B:41:0x0125, B:42:0x013f, B:43:0x0148, B:47:0x0150, B:50:0x0169, B:51:0x0178, B:53:0x0170, B:54:0x018b, B:56:0x0191, B:58:0x0197, B:60:0x019d, B:62:0x01a3, B:64:0x01ab, B:66:0x01b3, B:68:0x01b9, B:71:0x01cb, B:76:0x0090, B:78:0x0096, B:80:0x00a0, B:82:0x00a6, B:84:0x00ac, B:86:0x00b2, B:88:0x00ba, B:90:0x00c2, B:92:0x00ca, B:94:0x00d2, B:95:0x00e8, B:97:0x00f6), top: B:75:0x0090 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.RunnableC5213.run():void");
    }
}
