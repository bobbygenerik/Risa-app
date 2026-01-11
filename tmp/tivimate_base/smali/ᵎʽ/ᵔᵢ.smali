.class public final Lᵎʽ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ˏᵢ;


# static fields
.field public static final ⁱˊ:Lᵎʽ/ᵎﹶ;

.field public static final ﹳٴ:Lᵎʽ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lᵎʽ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᵎʽ/ᵔᵢ;->ﹳٴ:Lᵎʽ/ᵔᵢ;

    new-instance v1, Lᵎʽ/ᵎﹶ;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lᵎʽ/ᵎﹶ;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    sput-object v1, Lᵎʽ/ᵔᵢ;->ⁱˊ:Lᵎʽ/ᵎﹶ;

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

    sget-object p1, Lᵎʽ/ᵎﹶ;->Companion:Lᵎʽ/ﾞᴵ;

    invoke-virtual {p1}, Lᵎʽ/ﾞᴵ;->serializer()Lיʼ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lˈˎ/ﹳٴ;->ﹳٴ(Lיʼ/ﹳٴ;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᵎʽ/ᵎﹶ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/datastore/core/CorruptionException;

    const-string v1, "Cannot parse session configs"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;Lʿᵢ/ʻˋ;)V
    .locals 2

    check-cast p1, Lᵎʽ/ᵎﹶ;

    sget-object v0, Lˈˎ/ﹳٴ;->ˈ:Lˈˎ/ﹳٴ;

    sget-object v1, Lᵎʽ/ᵎﹶ;->Companion:Lᵎʽ/ﾞᴵ;

    invoke-virtual {v1}, Lᵎʽ/ﾞᴵ;->serializer()Lיʼ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lˈˎ/ﹳٴ;->ⁱˊ(Lיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lʿᵢ/ʻˋ;->write([B)V

    return-void
.end method

.method public final bridge synthetic ﹳٴ()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lᵎʽ/ᵔᵢ;->ⁱˊ:Lᵎʽ/ᵎﹶ;

    return-object v0
.end method
