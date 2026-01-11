package androidx.media3.datasource;

import java.util.Map;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f1141;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Map f1142;

    public HttpDataSource$InvalidResponseCodeException(int i, DataSourceException dataSourceException, Map map) {
        super(2004, dataSourceException, AbstractC3740.m7932(i, "Response code: "));
        this.f1141 = i;
        this.f1142 = map;
    }
}
