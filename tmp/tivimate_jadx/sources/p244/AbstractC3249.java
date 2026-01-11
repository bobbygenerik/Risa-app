package p244;

import android.view.KeyEvent;
import androidx.leanback.widget.picker.Picker;
import java.util.ArrayList;

/* renamed from: י.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3249 extends Picker {
    @Override // androidx.leanback.widget.picker.Picker, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() != 1 || keyCode < 7 || keyCode > 16) {
            return super.dispatchKeyEvent(keyEvent);
        }
        m564(getSelectedColumn(), keyCode - 7);
        performClick();
        return true;
    }

    public String getPin() {
        StringBuilder sb = new StringBuilder();
        int columnsCount = getColumnsCount();
        for (int i = 0; i < columnsCount; i++) {
            sb.append(Integer.toString(m568(i).f12505));
        }
        return sb.toString();
    }

    @Override // android.view.View
    public boolean performClick() {
        int selectedColumn = getSelectedColumn();
        if (selectedColumn == getColumnsCount() - 1) {
            return super.performClick();
        }
        setSelectedColumn(selectedColumn + 1);
        return false;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [י.ˈ, java.lang.Object] */
    public void setNumberOfColumns(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            ?? obj = new Object();
            obj.f12504 = 0;
            obj.f12501 = 9;
            obj.f12503 = "%d";
            arrayList.add(obj);
        }
        setColumns(arrayList);
    }
}
