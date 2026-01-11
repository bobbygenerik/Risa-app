package p322;

import android.os.Build;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p091.C1842;
import p324.AbstractC4028;
import ˊⁱ.ˑﹳ;

/* renamed from: ᴵˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3980 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f15338;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C3959 f15340;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f15342;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean f15347;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ExecutorService f15346 = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC3954(false));

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1842 f15345 = AbstractC4028.f15408;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ExecutorService f15337 = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC3954(true));

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3959 f15339 = new Object();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3959 f15341 = C3959.f15270;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3959 f15348 = C3959.f15269;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ˑﹳ f15343 = new ˑﹳ(11);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f15344 = 4;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f15336 = Integer.MAX_VALUE;

    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, ᴵˋ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, ᴵˋ.ˆʾ] */
    public C3980() {
        this.f15342 = Build.VERSION.SDK_INT == 23 ? 10 : 20;
        this.f15338 = 8;
        this.f15347 = true;
        this.f15340 = new Object();
    }
}
