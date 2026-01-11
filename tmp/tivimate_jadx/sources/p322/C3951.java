package p322;

import android.os.Trace;
import androidx.lifecycle.C0177;
import com.bumptech.glide.ʽ;
import java.util.concurrent.Executor;
import p013.C0907;
import p056.C1508;
import p056.InterfaceC1498;
import p329.InterfaceC4104;

/* renamed from: ᴵˋ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3951 implements InterfaceC1498 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ String f15256;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ Executor f15257;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4104 f15258;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3959 f15259;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C0177 f15260;

    public /* synthetic */ C3951(Executor executor, C3959 c3959, String str, InterfaceC4104 interfaceC4104, C0177 c0177) {
        this.f15257 = executor;
        this.f15259 = c3959;
        this.f15256 = str;
        this.f15258 = interfaceC4104;
        this.f15260 = c0177;
    }

    @Override // p056.InterfaceC1498
    /* renamed from: ʼˎ */
    public final Object mo2816(final C1508 c1508) {
        final C3959 c3959 = this.f15259;
        final String str = this.f15256;
        final InterfaceC4104 interfaceC4104 = this.f15258;
        final C0177 c0177 = this.f15260;
        this.f15257.execute(new Runnable() { // from class: ᴵˋ.ᵢˏ
            @Override // java.lang.Runnable
            public final void run() {
                String str2 = str;
                InterfaceC4104 interfaceC41042 = interfaceC4104;
                C0177 c01772 = c0177;
                C1508 c15082 = c1508;
                C3959.this.getClass();
                boolean z = ʽ.ˉˆ();
                if (z) {
                    try {
                        Trace.beginSection(ʽ.ˊʻ(str2));
                    } finally {
                        if (z) {
                            Trace.endSection();
                        }
                    }
                }
                try {
                    interfaceC41042.mo716();
                    C3958 c3958 = C3959.f15267;
                    c01772.m681(c3958);
                    c15082.m4323(c3958);
                } catch (Throwable th) {
                    c01772.m681(new C3968(th));
                    c15082.m4322(th);
                }
            }
        });
        return C0907.f3832;
    }
}
