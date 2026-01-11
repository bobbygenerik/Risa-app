package p411;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import p027.C1102;
import p070.C1629;
import p131.C2194;
import p145.C2405;
import p220.C3032;
import p229.C3125;
import p234.C3194;
import p252.C3311;
import p262.C3433;
import p341.C4265;
import ˊⁱ.ˑﹳ;

/* renamed from: ﹳˎ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4904 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3194 f18290;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3125 f18291;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4265 f18292;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f18293;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C3311 f18294;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C2194 f18295;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3433 f18296;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C4265 f18297;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4894 f18298;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final ˑﹳ f18299;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4887 f18300;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1102 f18301;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18302;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C4888 f18303;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C3433 f18304;

    public C4904(C2405 c2405, C4887 c4887, C3311 c3311, C1102 c1102, C4265 c4265, C4265 c42652, C3194 c3194, C4888 c4888, ˑﹳ r9, C2194 c2194) {
        this.f18301 = c1102;
        c2405.m5512();
        this.f18302 = c2405.f9296;
        this.f18300 = c4887;
        this.f18294 = c3311;
        this.f18292 = c4265;
        this.f18297 = c42652;
        this.f18290 = c3194;
        this.f18303 = c4888;
        this.f18299 = r9;
        this.f18295 = c2194;
        this.f18293 = System.currentTimeMillis();
        this.f18291 = new C3125(25);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9708() {
        C2194.m5195();
        try {
            C3433 c3433 = this.f18296;
            C3194 c3194 = (C3194) c3433.f13456;
            String str = (String) c3433.f13458;
            c3194.getClass();
            if (new File((File) c3194.f12213, str).delete()) {
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9709(C1629 c1629) {
        Future<?> submit = this.f18295.f8651.f8647.submit(new RunnableC4902(this, c1629, 1));
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
        try {
            submit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
        } catch (TimeoutException e3) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [ﹳˎ.ˉˆ] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9710(C1629 c1629) {
        C2194.m5195();
        C2194.m5195();
        this.f18296.m7337();
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        try {
            this.f18292.mo4837(new Object() { // from class: ﹳˎ.ˉˆ
            });
            this.f18298.m9694();
            if (!c1629.m4410().f6493.f3423) {
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
                throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
            }
            if (!this.f18298.m9690(c1629)) {
            }
            this.f18298.m9692(((C3032) ((AtomicReference) c1629.f6481).get()).f11560);
            m9708();
        } catch (Exception e) {
            m9708();
        } catch (Throwable th) {
            m9708();
            throw th;
        }
    }
}
