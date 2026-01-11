.class public final Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
.super Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
.source "SourceFile"


# instance fields
.field public final ˈٴ:I

.field public final ᴵᵔ:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V
    .locals 2

    const-string v0, "Response code: "

    invoke-static {p1, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-direct {p0, v1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    iput p1, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    iput-object p3, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ᴵᵔ:Ljava/util/Map;

    return-void
.end method
