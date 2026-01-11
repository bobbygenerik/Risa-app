package p383;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.C0221;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p031.C1144;
import p031.InterfaceC1141;
import p108.C1944;
import p138.C2355;
import p185.C2765;
import p238.InterfaceC3203;

/* renamed from: ⁱʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4598 implements InterfaceC4578 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f17115;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f17116;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17117;

    public C4598(Context context, C1944 c1944) {
        this.f17117 = 1;
        this.f17115 = context.getApplicationContext();
        this.f17116 = c1944;
    }

    public C4598(Context context, InterfaceC4578 interfaceC4578) {
        this.f17117 = 4;
        this.f17115 = context.getApplicationContext();
        this.f17116 = interfaceC4578;
    }

    public C4598(Resources resources, InterfaceC4578 interfaceC4578) {
        this.f17117 = 3;
        this.f17116 = resources;
        this.f17115 = interfaceC4578;
    }

    public /* synthetic */ C4598(Object obj, int i, Object obj2) {
        this.f17117 = i;
        this.f17115 = obj;
        this.f17116 = obj2;
    }

    public String toString() {
        switch (this.f17117) {
            case 2:
                return "MultiModelLoader{modelLoaders=" + Arrays.toString(((ArrayList) this.f17115).toArray()) + '}';
            default:
                return super.toString();
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        switch (this.f17117) {
            case 0:
                Uri uri = (Uri) obj;
                return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
            case 1:
                return true;
            case 2:
                ArrayList arrayList = (ArrayList) this.f17115;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    if (((InterfaceC4578) obj2).mo4899(obj)) {
                        return true;
                    }
                }
                return false;
            case 3:
                return true;
            default:
                Uri uri2 = (Uri) obj;
                return "android.resource".equals(uri2.getScheme()) && ((Context) this.f17115).getPackageName().equals(uri2.getAuthority());
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        C0221 c0221;
        C4586 mo4900;
        Uri uri;
        switch (this.f17117) {
            case 0:
                Uri uri2 = (Uri) obj;
                String substring = uri2.toString().substring(22);
                C2765 c2765 = new C2765(uri2);
                AssetManager assetManager = (AssetManager) this.f17115;
                switch (((C4599) this.f17116).f17119) {
                    case 0:
                        c0221 = new C0221(assetManager, substring, 0);
                        break;
                    default:
                        c0221 = new C0221(assetManager, substring, 1);
                        break;
                }
                return new C4586(c2765, c0221);
            case 1:
                Integer num = (Integer) obj;
                Resources.Theme theme = (Resources.Theme) c1144.m3577(C2355.f9108);
                return new C4586(new C2765(num), new C4588(theme, theme != null ? theme.getResources() : ((Context) this.f17115).getResources(), (C1944) this.f17116, num.intValue()));
            case 2:
                ArrayList arrayList = (ArrayList) this.f17115;
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList(size);
                InterfaceC1141 interfaceC1141 = null;
                for (int i3 = 0; i3 < size; i3++) {
                    InterfaceC4578 interfaceC4578 = (InterfaceC4578) arrayList.get(i3);
                    if (interfaceC4578.mo4899(obj) && (mo4900 = interfaceC4578.mo4900(obj, i, i2, c1144)) != null) {
                        interfaceC1141 = mo4900.f17082;
                        arrayList2.add(mo4900.f17080);
                    }
                }
                if (arrayList2.isEmpty() || interfaceC1141 == null) {
                    return null;
                }
                return new C4586(interfaceC1141, new C4587(arrayList2, (InterfaceC3203) this.f17116));
            case 3:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.f17116;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
                } catch (Resources.NotFoundException e) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        String str = "Received invalid resource id: " + num2;
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((InterfaceC4578) this.f17115).mo4900(uri, i, i2, c1144);
            default:
                Uri uri3 = (Uri) obj;
                InterfaceC4578 interfaceC45782 = (InterfaceC4578) this.f17116;
                List<String> pathSegments = uri3.getPathSegments();
                C4586 c4586 = null;
                if (pathSegments.size() == 1) {
                    try {
                        int parseInt = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (parseInt != 0) {
                            c4586 = interfaceC45782.mo4900(Integer.valueOf(parseInt), i, i2, c1144);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            String str2 = "Failed to parse a valid non-0 resource id from: " + uri3;
                        }
                        return c4586;
                    } catch (NumberFormatException e2) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return c4586;
                        }
                        String str3 = "Failed to parse resource id from: " + uri3;
                        return c4586;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    String str4 = "Failed to parse resource uri: " + uri3;
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                String str5 = pathSegments2.get(0);
                String str6 = pathSegments2.get(1);
                Context context = (Context) this.f17115;
                int identifier = context.getResources().getIdentifier(str6, str5, context.getPackageName());
                if (identifier != 0) {
                    return interfaceC45782.mo4900(Integer.valueOf(identifier), i, i2, c1144);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                String str7 = "Failed to find resource id for: " + uri3;
                return null;
        }
    }
}
