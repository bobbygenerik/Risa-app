.class public final Lʾˈ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ˏᵢ;


# instance fields
.field public final ﹳٴ:Lʾˈ/ﹳـ;


# direct methods
.method public constructor <init>(Lʾˈ/ﹳـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ٴʼ;->ﹳٴ:Lʾˈ/ﹳـ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    sget-object v0, Lˈˎ/ﹳٴ;->ˈ:Lˈˎ/ﹳٴ;

    invoke-static {p1}, Lcom/bumptech/glide/ʽ;->ʽﹳ(Ljava/io/FileInputStream;)[B

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lʾˈ/ᵎⁱ;->Companion:Lʾˈ/ˉٴ;

    invoke-virtual {p1}, Lʾˈ/ˉٴ;->serializer()Lיʼ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lˈˎ/ﹳٴ;->ﹳٴ(Lיʼ/ﹳٴ;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʾˈ/ᵎⁱ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/datastore/core/CorruptionException;

    const-string v1, "Cannot parse session data"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;Lʿᵢ/ʻˋ;)V
    .locals 2

    check-cast p1, Lʾˈ/ᵎⁱ;

    sget-object v0, Lˈˎ/ﹳٴ;->ˈ:Lˈˎ/ﹳٴ;

    sget-object v1, Lʾˈ/ᵎⁱ;->Companion:Lʾˈ/ˉٴ;

    invoke-virtual {v1}, Lʾˈ/ˉٴ;->serializer()Lיʼ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lˈˎ/ﹳٴ;->ⁱˊ(Lיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lʿᵢ/ʻˋ;->write([B)V

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lʾˈ/ᵎⁱ;

    iget-object v1, p0, Lʾˈ/ٴʼ;->ﹳٴ:Lʾˈ/ﹳـ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lʾˈ/ﹳـ;->ﹳٴ(Lʾˈ/ᵔٴ;)Lʾˈ/ᵔٴ;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lʾˈ/ᵎⁱ;-><init>(Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V

    return-object v0
.end method
