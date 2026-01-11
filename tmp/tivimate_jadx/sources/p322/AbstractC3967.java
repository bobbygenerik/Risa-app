package p322;

import android.content.Context;
import androidx.work.WorkerParameters;
import java.util.concurrent.atomic.AtomicInteger;
import p056.C1505;

/* renamed from: ᴵˋ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3967 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AtomicInteger f15298 = new AtomicInteger(-256);

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f15299;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final WorkerParameters f15300;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f15301;

    public AbstractC3967(Context context, WorkerParameters workerParameters) {
        this.f15301 = context;
        this.f15300 = workerParameters;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m8137() {
        return this.f15298.get() != -256;
    }

    /* renamed from: ˈ */
    public abstract C1505 mo1018();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m8138() {
        return this.f15300.f1566;
    }

    /* renamed from: ﹳٴ */
    public abstract C1505 mo1020();
}
