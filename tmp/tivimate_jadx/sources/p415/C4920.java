package p415;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import p186.C2826;
import p186.InterfaceC2840;

/* renamed from: ﹳـ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4920 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2826 m9722(View view, C2826 c2826) {
        CharSequence coerceToStyledText;
        if (Log.isLoggable("ReceiveContent", 3)) {
            String str = "onReceive: " + c2826;
        }
        InterfaceC2840 interfaceC2840 = c2826.f10611;
        if (interfaceC2840.mo2893() == 2) {
            return c2826;
        }
        ClipData mo2896 = interfaceC2840.mo2896();
        int mo2895 = interfaceC2840.mo2895();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z = false;
        for (int i = 0; i < mo2896.getItemCount(); i++) {
            ClipData.Item itemAt = mo2896.getItemAt(i);
            if ((mo2895 & 1) != 0) {
                coerceToStyledText = itemAt.coerceToText(context);
                if (coerceToStyledText instanceof Spanned) {
                    coerceToStyledText = coerceToStyledText.toString();
                }
            } else {
                coerceToStyledText = itemAt.coerceToStyledText(context);
            }
            if (coerceToStyledText != null) {
                if (z) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), coerceToStyledText);
                } else {
                    int selectionStart = Selection.getSelectionStart(editable);
                    int selectionEnd = Selection.getSelectionEnd(editable);
                    int max = Math.max(0, Math.min(selectionStart, selectionEnd));
                    int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                    Selection.setSelection(editable, max2);
                    editable.replace(max, max2, coerceToStyledText);
                    z = true;
                }
            }
        }
        return null;
    }
}
