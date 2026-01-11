package p229;

import android.view.ViewGroup;
import androidx.lifecycle.RunnableC0197;
import java.util.ArrayList;
import p003.RunnableC0786;
import p013.C0907;
import p152.AbstractC2452;
import p329.InterfaceC4104;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3094 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3095 f11782;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f11783;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f11784 = 0;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f11785;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3094(C3095 c3095, ViewGroup viewGroup, Object obj) {
        super(0);
        this.f11782 = c3095;
        this.f11785 = viewGroup;
        this.f11783 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3094(C3095 c3095, Object obj, ViewGroup viewGroup) {
        super(0);
        this.f11782 = c3095;
        this.f11783 = obj;
        this.f11785 = viewGroup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.media3.decoder.ffmpeg.ˈ, java.lang.Object] */
    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f11784) {
            case 0:
                this.f11782.f11801.mo6739(this.f11785, this.f11783);
                return C0907.f3832;
            default:
                C3095 c3095 = this.f11782;
                ArrayList arrayList = c3095.f11788;
                AbstractC3104 abstractC3104 = c3095.f11801;
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        if (!((C3081) ((ᵎﹶ) ((C3078) obj)).ʾˋ).f11706) {
                            if (C3085.m6654(2)) {
                            }
                            ?? obj2 = new Object();
                            abstractC3104.mo6728(((C3081) ((ᵎﹶ) ((C3078) arrayList.get(0))).ʾˋ).f11701, this.f11783, obj2, new RunnableC0197(24, c3095));
                            obj2.m783();
                            return C0907.f3832;
                        }
                    }
                }
                if (C3085.m6654(2)) {
                }
                abstractC3104.mo6735(c3095.f11798, new RunnableC0786(c3095, 21, this.f11785));
                return C0907.f3832;
        }
    }
}
