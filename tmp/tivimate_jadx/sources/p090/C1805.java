package p090;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;
import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p309.AbstractC3784;
import p309.C3780;
import p316.AbstractC3906;
import p329.InterfaceC4106;
import p373.EnumC4532;

/* renamed from: ʿᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1805 extends AbstractC3906 implements InterfaceC4106 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7284;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ Object f7285;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7286;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1805(Object obj, InterfaceC2136 interfaceC2136, int i) {
        super(1, interfaceC2136);
        this.f7286 = i;
        this.f7285 = obj;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        Context context;
        String str;
        switch (this.f7286) {
            case 0:
                int i = this.f7284;
                C0907 c0907 = C0907.f3832;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return c0907;
                }
                AbstractC2026.m5044(obj);
                C3780 c3780 = (C3780) this.f7285;
                this.f7284 = 1;
                SharedPreferences.Editor edit = ((SharedPreferences) c3780.f14687.getValue()).edit();
                Set set = c3780.f14690;
                if (set == null) {
                    edit.clear();
                } else {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        edit.remove((String) it.next());
                    }
                }
                if (!edit.commit()) {
                    throw new IOException("Unable to delete migrated keys from SharedPreferences.");
                }
                if (((SharedPreferences) c3780.f14687.getValue()).getAll().isEmpty() && (context = c3780.f14685) != null && (str = c3780.f14686) != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        AbstractC3784.m7954(context, str);
                    } else {
                        File file = new File(new File(context.getApplicationInfo().dataDir, "shared_prefs"), str.concat(".xml"));
                        File file2 = new File(file.getPath() + ".bak");
                        file.delete();
                        file2.delete();
                    }
                }
                if (set != null) {
                    set.clear();
                }
                EnumC4532 enumC4532 = EnumC4532.f16960;
                return c0907 == enumC4532 ? enumC4532 : c0907;
            default:
                int i2 = this.f7284;
                if (i2 != 0) {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    AbstractC2026.m5044(obj);
                    return obj;
                }
                AbstractC2026.m5044(obj);
                C1782 c1782 = (C1782) this.f7285;
                this.f7284 = 1;
                Object mo3844 = c1782.mo3844(this);
                EnumC4532 enumC45322 = EnumC4532.f16960;
                return mo3844 == enumC45322 ? enumC45322 : mo3844;
        }
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj;
        switch (this.f7286) {
            case 0:
                return new C1805((C3780) this.f7285, interfaceC2136, 0).mo3389(C0907.f3832);
            default:
                return new C1805((C1782) this.f7285, interfaceC2136, 1).mo3389(C0907.f3832);
        }
    }
}
