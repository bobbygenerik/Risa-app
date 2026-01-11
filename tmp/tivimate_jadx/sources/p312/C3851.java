package p312;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: ᐧⁱ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3851 extends View implements InterfaceC3874 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public float f14898;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f14899;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3862 f14900;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public List f14901;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public float f14902;

    public C3851(Context context, int i) {
        super(context, null);
        this.f14899 = new ArrayList();
        this.f14901 = Collections.EMPTY_LIST;
        this.f14898 = 0.0533f;
        this.f14900 = C3862.f15037;
        this.f14902 = 0.08f;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0467  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dispatchDraw(android.graphics.Canvas r37) {
        /*
            Method dump skipped, instructions count: 1174
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3851.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // p312.InterfaceC3874
    /* renamed from: ﹳٴ */
    public final void mo8014(List list, C3862 c3862, float f, float f2) {
        this.f14901 = list;
        this.f14900 = c3862;
        this.f14898 = f;
        this.f14902 = f2;
        while (true) {
            ArrayList arrayList = this.f14899;
            if (arrayList.size() >= list.size()) {
                invalidate();
                return;
            }
            arrayList.add(new C3870(getContext()));
        }
    }
}
