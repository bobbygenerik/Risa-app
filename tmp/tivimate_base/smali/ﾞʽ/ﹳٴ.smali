.class public final Lﾞʽ/ﹳٴ;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final ᴵˊ:Lﾞʼ/ﹳٴ;


# instance fields
.field public final ʾˋ:Lﹳˋ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lﾞʽ/ﹳٴ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lﾞʽ/ﹳٴ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lᵢᴵ/ﹳٴ;Lˊᐧ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lﾞʽ/ﹳٴ;->ʾˋ:Lﹳˋ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Lﹳˋ/ʼˎ;[B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lﾞʽ/ﹳٴ;->ʾˋ:Lﹳˋ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lﹶﾞ/ﹳᐧ;

    invoke-direct {v0, p0}, Lﹶﾞ/ﹳᐧ;-><init>(Lﾞʽ/ﹳٴ;)V

    return-object v0
.end method

.method public final ᵎﹶ()Lˎᵔ/ⁱˊ;
    .locals 6

    .prologue
    iget-object v0, p0, Lﾞʽ/ﹳٴ;->ʾˋ:Lﹳˋ/ʼˎ;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lﹳˋ/ʼˎ;->ـˏ(Lﾞʽ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v1

    sget-object v2, Lﾞʽ/ﹳٴ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    const-string v3, "Read ASN.1 tag {}"

    invoke-interface {v2, v1, v3}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lﹳˋ/ʼˎ;->ʼˈ(Lﾞʽ/ﹳٴ;)I

    move-result v3

    const-string v4, "Read ASN.1 object length: {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lﹳˋ/ʼˎ;->ﹳـ(ILﾞʽ/ﹳٴ;)[B

    move-result-object v3

    invoke-virtual {v1, v0}, Lˎᵔ/ﾞᴵ;->ʽ(Lﹳˋ/ʼˎ;)Lʽⁱ/ᵎﹶ;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lʽⁱ/ᵎﹶ;->ᐧˎ(Lˎᵔ/ﾞᴵ;[B)Lˎᵔ/ⁱˊ;

    move-result-object v0

    const-string v1, "Read ASN.1 object: {}"

    invoke-interface {v2, v0, v1}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/hierynomus/asn1/ASN1ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/hierynomus/asn1/ASN1ParseException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot parse ASN.1 object from stream"

    invoke-direct {v1, v0, v3, v2}, Lcom/hierynomus/asn1/ASN1ParseException;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :goto_1
    throw v0
.end method
