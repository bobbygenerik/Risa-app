package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NonOverlappingLinearLayout extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ArrayList f674;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f675;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f676;

    public NonOverlappingLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f675 = false;
        this.f674 = new ArrayList();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        int i;
        if (!this.f676) {
            super.focusableViewAvailable(view);
            return;
        }
        for (View view2 = view; view2 != this && view2 != null; view2 = (View) view2.getParent()) {
            if (view2.getParent() == this) {
                i = indexOfChild(view2);
                break;
            }
        }
        i = -1;
        if (i != -1) {
            ((ArrayList) this.f674.get(i)).add(view);
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0097 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020 A[Catch: all -> 0x0016, LOOP:0: B:9:0x0020->B:11:0x002a, LOOP_START, TRY_ENTER, TryCatch #0 {all -> 0x0016, blocks: (B:59:0x0008, B:61:0x000e, B:9:0x0020, B:11:0x002a, B:13:0x0033, B:15:0x003d), top: B:58:0x0008 }] */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r10, int r11, int r12, int r13, int r14) {
        /*
            r9 = this;
            java.util.ArrayList r1 = r9.f674
            r2 = 0
            boolean r0 = r9.f675     // Catch: java.lang.Throwable -> L98
            r3 = 1
            if (r0 == 0) goto L1b
            int r0 = r9.getOrientation()     // Catch: java.lang.Throwable -> L16
            if (r0 != 0) goto L1b
            int r0 = r9.getLayoutDirection()     // Catch: java.lang.Throwable -> L16
            if (r0 != r3) goto L1b
            r0 = r3
            goto L1c
        L16:
            r0 = move-exception
            r10 = r0
            r3 = r9
            goto L9b
        L1b:
            r0 = r2
        L1c:
            r9.f676 = r0     // Catch: java.lang.Throwable -> L98
            if (r0 == 0) goto L46
        L20:
            int r0 = r1.size()     // Catch: java.lang.Throwable -> L16
            int r4 = r9.getChildCount()     // Catch: java.lang.Throwable -> L16
            if (r0 <= r4) goto L33
            int r0 = r1.size()     // Catch: java.lang.Throwable -> L16
            int r0 = r0 - r3
            r1.remove(r0)     // Catch: java.lang.Throwable -> L16
            goto L20
        L33:
            int r0 = r1.size()     // Catch: java.lang.Throwable -> L16
            int r3 = r9.getChildCount()     // Catch: java.lang.Throwable -> L16
            if (r0 >= r3) goto L46
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L16
            r0.<init>()     // Catch: java.lang.Throwable -> L16
            r1.add(r0)     // Catch: java.lang.Throwable -> L16
            goto L33
        L46:
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r12
            r7 = r13
            r8 = r14
            super.onLayout(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L79
            boolean r10 = r3.f676     // Catch: java.lang.Throwable -> L79
            if (r10 == 0) goto L7f
            r10 = r2
        L54:
            int r11 = r1.size()     // Catch: java.lang.Throwable -> L79
            if (r10 >= r11) goto L7f
            r11 = r2
        L5b:
            java.lang.Object r12 = r1.get(r10)     // Catch: java.lang.Throwable -> L79
            java.util.ArrayList r12 = (java.util.ArrayList) r12     // Catch: java.lang.Throwable -> L79
            int r12 = r12.size()     // Catch: java.lang.Throwable -> L79
            if (r11 >= r12) goto L7c
            java.lang.Object r12 = r1.get(r10)     // Catch: java.lang.Throwable -> L79
            java.util.ArrayList r12 = (java.util.ArrayList) r12     // Catch: java.lang.Throwable -> L79
            java.lang.Object r12 = r12.get(r11)     // Catch: java.lang.Throwable -> L79
            android.view.View r12 = (android.view.View) r12     // Catch: java.lang.Throwable -> L79
            super.focusableViewAvailable(r12)     // Catch: java.lang.Throwable -> L79
            int r11 = r11 + 1
            goto L5b
        L79:
            r0 = move-exception
        L7a:
            r10 = r0
            goto L9b
        L7c:
            int r10 = r10 + 1
            goto L54
        L7f:
            boolean r10 = r3.f676
            if (r10 == 0) goto L97
            r3.f676 = r2
        L85:
            int r10 = r1.size()
            if (r2 >= r10) goto L97
            java.lang.Object r10 = r1.get(r2)
            java.util.ArrayList r10 = (java.util.ArrayList) r10
            r10.clear()
            int r2 = r2 + 1
            goto L85
        L97:
            return
        L98:
            r0 = move-exception
            r3 = r9
            goto L7a
        L9b:
            boolean r11 = r3.f676
            if (r11 == 0) goto Lb3
            r3.f676 = r2
        La1:
            int r11 = r1.size()
            if (r2 >= r11) goto Lb3
            java.lang.Object r11 = r1.get(r2)
            java.util.ArrayList r11 = (java.util.ArrayList) r11
            r11.clear()
            int r2 = r2 + 1
            goto La1
        Lb3:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.NonOverlappingLinearLayout.onLayout(boolean, int, int, int, int):void");
    }

    public void setFocusableViewAvailableFixEnabled(boolean z) {
        this.f675 = z;
    }
}
