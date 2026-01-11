package p137;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import p003.C0790;
import p186.AbstractC2823;
import p186.C2804;
import p186.InterfaceC2786;

/* renamed from: ˉˆ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2265 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m5299(DragEvent dragEvent, View view, Activity activity) {
        InterfaceC2786 interfaceC2786;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            interfaceC2786 = new C0790(clipData, 3);
        } else {
            C2804 c2804 = new C2804();
            c2804.f10560 = clipData;
            c2804.f10557 = 3;
            interfaceC2786 = c2804;
        }
        AbstractC2823.m6269(view, interfaceC2786.build());
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m5300(DragEvent dragEvent, TextView textView, Activity activity) {
        InterfaceC2786 interfaceC2786;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                interfaceC2786 = new C0790(clipData, 3);
            } else {
                C2804 c2804 = new C2804();
                c2804.f10560 = clipData;
                c2804.f10557 = 3;
                interfaceC2786 = c2804;
            }
            AbstractC2823.m6269(textView, interfaceC2786.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }
}
