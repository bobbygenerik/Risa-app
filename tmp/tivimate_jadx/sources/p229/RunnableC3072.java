package p229;

import android.view.View;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p447.InterfaceC5284;
import p447.RunnableC5259;

/* renamed from: ˑʼ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3072 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f11660;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11661 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Serializable f11662;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f11663;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f11664;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f11665;

    public RunnableC3072(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f11664 = i;
        this.f11660 = arrayList;
        this.f11662 = arrayList2;
        this.f11665 = arrayList3;
        this.f11663 = arrayList4;
    }

    public /* synthetic */ RunnableC3072(RunnableC5259 runnableC5259, int i, Exception exc, byte[] bArr, Map map) {
        this.f11660 = runnableC5259;
        this.f11664 = i;
        this.f11662 = exc;
        this.f11665 = bArr;
        this.f11663 = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f11661;
        Object obj = this.f11663;
        Object obj2 = this.f11665;
        Serializable serializable = this.f11662;
        Object obj3 = this.f11660;
        switch (i) {
            case 0:
                for (int i2 = 0; i2 < this.f11664; i2++) {
                    View view = (View) ((ArrayList) obj3).get(i2);
                    String str = (String) ((ArrayList) serializable).get(i2);
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    AbstractC2776.m6177(view, str);
                    AbstractC2776.m6177((View) ((ArrayList) obj2).get(i2), (String) ((ArrayList) obj).get(i2));
                }
                return;
            default:
                RunnableC5259 runnableC5259 = (RunnableC5259) obj3;
                ((InterfaceC5284) runnableC5259.f19858).mo10467(runnableC5259.f19857, this.f11664, (Exception) serializable, (byte[]) obj2, (Map) obj);
                return;
        }
    }
}
