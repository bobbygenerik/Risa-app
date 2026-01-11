package p011;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.preference.Preference;
import ar.tvplayer.tv.R;

/* renamed from: ʻᐧ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnCreateContextMenuListenerC0861 implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Preference f3676;

    public ViewOnCreateContextMenuListenerC0861(Preference preference) {
        this.f3676 = preference;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        Preference preference = this.f3676;
        CharSequence mo825 = preference.mo825();
        if (!preference.f1374 || TextUtils.isEmpty(mo825)) {
            return;
        }
        contextMenu.setHeaderTitle(mo825);
        contextMenu.add(0, 0, 0, R.string.5h9).setOnMenuItemClickListener(this);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        Preference preference = this.f3676;
        ClipboardManager clipboardManager = (ClipboardManager) preference.f1350.getSystemService("clipboard");
        CharSequence mo825 = preference.mo825();
        clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", mo825));
        Context context = preference.f1350;
        Toast.makeText(context, context.getString(R.string.1hf, mo825), 0).show();
        return true;
    }
}
