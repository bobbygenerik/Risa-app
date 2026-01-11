package p179;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.parse.ʽˑ;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import p186.InterfaceC2772;

/* renamed from: ˋˋ.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2693 implements InterfaceC2772 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10259;

    public /* synthetic */ C2693(RecyclerView recyclerView) {
        this.f10259 = recyclerView;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m6048(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.f10259;
        int i5 = recyclerView.f1482.ᵎˊ();
        int i6 = i2 + i;
        for (int i7 = 0; i7 < i5; i7++) {
            View view = recyclerView.f1482.ٴʼ(i7);
            AbstractC2673 m927 = RecyclerView.m927(view);
            if (m927 != null && !m927.m6016() && (i4 = m927.f10175) >= i && i4 < i6) {
                m927.m6018(2);
                if (obj == null) {
                    m927.m6018(1024);
                } else if ((1024 & m927.f10185) == 0) {
                    if (m927.f10189 == null) {
                        ArrayList arrayList = new ArrayList();
                        m927.f10189 = arrayList;
                        m927.f10191 = DesugarCollections.unmodifiableList(arrayList);
                    }
                    m927.f10189.add(obj);
                }
                ((C2700) view.getLayoutParams()).f10280 = true;
            }
        }
        C2666 c2666 = recyclerView.f1464;
        ArrayList arrayList2 = c2666.f10120;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList2.get(size);
            if (abstractC2673 != null && (i3 = abstractC2673.f10175) >= i && i3 < i6) {
                abstractC2673.m6018(2);
                c2666.m5957(size);
            }
        }
        recyclerView.f1457 = true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m6049(int i, int i2) {
        RecyclerView recyclerView = this.f10259;
        int i3 = recyclerView.f1482.ᵎˊ();
        for (int i4 = 0; i4 < i3; i4++) {
            AbstractC2673 m927 = RecyclerView.m927(recyclerView.f1482.ٴʼ(i4));
            if (m927 != null && !m927.m6016() && m927.f10175 >= i) {
                if (RecyclerView.f1455) {
                    String str = "offsetPositionRecordsForInsert attached child " + i4 + " holder " + m927 + " now at position " + (m927.f10175 + i2);
                }
                m927.m6014(i2, false);
                recyclerView.f1516.f10382 = true;
            }
        }
        ArrayList arrayList = recyclerView.f1464.f10120;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(i5);
            if (abstractC2673 != null && abstractC2673.f10175 >= i) {
                if (RecyclerView.f1455) {
                    String str2 = "offsetPositionRecordsForInsert cached " + i5 + " holder " + abstractC2673 + " now at position " + (abstractC2673.f10175 + i2);
                }
                abstractC2673.m6014(i2, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f1524 = true;
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void mo6050() {
        this.f10259.m940();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m6051(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        RecyclerView recyclerView = this.f10259;
        int i11 = recyclerView.f1482.ᵎˊ();
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        boolean z = false;
        for (int i12 = 0; i12 < i11; i12++) {
            AbstractC2673 m927 = RecyclerView.m927(recyclerView.f1482.ٴʼ(i12));
            if (m927 != null && (i10 = m927.f10175) >= i4 && i10 <= i3) {
                if (RecyclerView.f1455) {
                    String str = "offsetPositionRecordsForMove attached child " + i12 + " holder " + m927;
                }
                if (m927.f10175 == i) {
                    m927.m6014(i2 - i, false);
                } else {
                    m927.m6014(i5, false);
                }
                recyclerView.f1516.f10382 = true;
            }
        }
        ArrayList arrayList = recyclerView.f1464.f10120;
        if (i < i2) {
            i7 = i;
            i6 = i2;
            i8 = -1;
        } else {
            i6 = i;
            i7 = i2;
            i8 = 1;
        }
        int size = arrayList.size();
        int i13 = 0;
        while (i13 < size) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(i13);
            if (abstractC2673 != null && (i9 = abstractC2673.f10175) >= i7 && i9 <= i6) {
                if (i9 == i) {
                    abstractC2673.m6014(i2 - i, z);
                } else {
                    abstractC2673.m6014(i8, z);
                }
                if (RecyclerView.f1455) {
                    String str2 = "offsetPositionRecordsForMove cached child " + i13 + " holder " + abstractC2673;
                }
            }
            i13++;
            z = false;
        }
        recyclerView.requestLayout();
        recyclerView.f1524 = true;
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public float mo6052() {
        float f;
        RecyclerView recyclerView = this.f10259;
        if (recyclerView.f1521.mo538()) {
            f = recyclerView.f1470;
        } else {
            if (!recyclerView.f1521.mo506()) {
                return 0.0f;
            }
            f = recyclerView.f1467;
        }
        return -f;
    }

    @Override // p186.InterfaceC2772
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean mo6053(float f) {
        int i;
        int i2;
        RecyclerView recyclerView = this.f10259;
        if (recyclerView.f1521.mo538()) {
            i2 = (int) f;
            i = 0;
        } else if (recyclerView.f1521.mo506()) {
            i = (int) f;
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        recyclerView.m940();
        return recyclerView.m967(i, i2, 0, Integer.MAX_VALUE);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public AbstractC2673 m6054(int i) {
        RecyclerView recyclerView = this.f10259;
        AbstractC2673 m979 = recyclerView.m979(i, true);
        if (m979 != null) {
            ʽˑ r1 = recyclerView.f1482;
            if (!((ArrayList) r1.ᴵᵔ).contains(m979.f10176)) {
                return m979;
            }
            if (RecyclerView.f1455) {
            }
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6055(C2743 c2743) {
        int i = c2743.f10467;
        RecyclerView recyclerView = this.f10259;
        if (i == 1) {
            recyclerView.f1521.mo514(c2743.f10466, c2743.f10465);
            return;
        }
        if (i == 2) {
            recyclerView.f1521.mo532(c2743.f10466, c2743.f10465);
        } else if (i == 4) {
            recyclerView.f1521.mo873(recyclerView, c2743.f10466, c2743.f10465);
        } else {
            if (i != 8) {
                return;
            }
            recyclerView.f1521.mo534(c2743.f10466, c2743.f10465);
        }
    }
}
