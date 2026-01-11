package p439;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.nio.ByteBuffer;
import p124.C2129;
import p275.C3508;
import p275.C3526;
import p366.C4476;
import ˏˆ.ﹳٴ;

/* renamed from: ﹶᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5190 extends InputConnectionWrapper {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4476 f19507;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EditText f19508;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5190(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        C4476 c4476 = new C4476(7);
        this.f19508 = editText;
        this.f19507 = c4476;
        if (C3508.f13826 != null) {
            C3508 m7473 = C3508.m7473();
            if (m7473.m7477() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            C3526 c3526 = m7473.f13830;
            c3526.getClass();
            Bundle bundle = editorInfo.extras;
            C2129 c2129 = (C2129) ((ﹳٴ) c3526.f13867).ᴵˊ;
            int m5092 = c2129.m5092(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", m5092 != 0 ? ((ByteBuffer) c2129.f8314).getInt(m5092 + c2129.f8313) : 0);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.f19508.getEditableText();
        this.f19507.getClass();
        return C4476.m9033(this, editableText, i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.f19508.getEditableText();
        this.f19507.getClass();
        return C4476.m9033(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
