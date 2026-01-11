package p137;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.lifecycle.RunnableC0197;
import androidx.work.impl.WorkDatabase;
import ar.tvplayer.tv.R;
import com.bumptech.glide.C0229;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import p052.C1408;
import p105.C1924;
import p105.C1929;
import p131.C2194;
import p234.C3194;
import p240.C3231;
import p322.C3959;
import p322.C3980;
import p352.InterfaceC4303;
import p361.AbstractC4397;
import p361.C4395;
import p452.C5365;
import ᐧᵎ.ᵢי;

/* renamed from: ˉˆ.ˎـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2282 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f8924;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f8925;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f8926;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f8927;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f8928;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f8929;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f8930;

    public C2282() {
        this.f8929 = new AtomicBoolean();
        this.f8928 = null;
        this.f8924 = new HashMap(16, 1.0f);
        this.f8925 = new HashMap(16, 1.0f);
        this.f8926 = new HashMap(16, 1.0f);
        this.f8930 = new HashMap(16, 1.0f);
        this.f8927 = null;
    }

    public C2282(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f8925 = layoutParams;
        this.f8926 = new Rect();
        this.f8930 = new int[2];
        this.f8927 = new int[2];
        this.f8929 = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.6h9, (ViewGroup) null);
        this.f8928 = inflate;
        this.f8924 = (TextView) inflate.findViewById(R.id.3tv);
        layoutParams.setTitle(C2282.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.f259897bm;
        layoutParams.flags = 24;
    }

    public C2282(Context context, C3980 c3980, ᵢי r3, InterfaceC4303 interfaceC4303, WorkDatabase workDatabase, C3231 c3231, ArrayList arrayList) {
        this.f8928 = c3980;
        this.f8924 = r3;
        this.f8925 = interfaceC4303;
        this.f8926 = workDatabase;
        this.f8930 = c3231;
        this.f8927 = arrayList;
        this.f8929 = context.getApplicationContext();
        new C3959();
    }

    public C2282(String str, C3194 c3194, C2194 c2194) {
        this.f8925 = new C0229(this, false);
        this.f8926 = new C0229(this, true);
        this.f8930 = new C1408(1);
        this.f8927 = new AtomicMarkableReference(null, false);
        this.f8924 = str;
        this.f8929 = new C1929(c3194);
        this.f8928 = c2194;
    }

    public C2282(C5365 c5365) {
        this.f8929 = c5365;
        this.f8930 = AbstractC4397.f16355;
        this.f8927 = C4395.f16350;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5327(String str) {
        C0229 c0229 = (C0229) this.f8926;
        synchronized (c0229) {
            try {
                if (((C1924) ((AtomicMarkableReference) c0229.f1646).getReference()).m4866(str)) {
                    AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) c0229.f1646;
                    atomicMarkableReference.set((C1924) atomicMarkableReference.getReference(), true);
                    RunnableC0197 runnableC0197 = new RunnableC0197(16, c0229);
                    AtomicReference atomicReference = (AtomicReference) c0229.f1643;
                    while (!atomicReference.compareAndSet(null, runnableC0197)) {
                        if (atomicReference.get() != null) {
                            return;
                        }
                    }
                    ((C2194) ((C2282) c0229.f1645).f8928).f8650.m5193(runnableC0197);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
