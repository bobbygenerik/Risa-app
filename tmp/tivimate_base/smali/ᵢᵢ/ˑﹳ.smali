.class public final Lᵢᵢ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˎ/ⁱˊ;


# static fields
.field public static final ᴵˊ:Ljava/util/HashMap;


# instance fields
.field public final ʾˋ:Lᵔʿ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lᵢᵢ/ˑﹳ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "SHA256"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lᵢᵢ/ⁱˊ;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lᵢᵢ/ⁱˊ;-><init>(I)V

    const-string v2, "MD4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lᵢᵢ/ˑﹳ;->ᴵˊ:Ljava/util/HashMap;

    const-string v1, "MD4"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵʿ/ˑﹳ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lᴵʿ/ˑﹳ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵔʿ/ﹳٴ;

    iput-object v0, p0, Lᵢᵢ/ˑﹳ;->ʾˋ:Lᵔʿ/ﹳٴ;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No MessageDigest MD4 defined in BouncyCastle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final update([B)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, Lᵢᵢ/ˑﹳ;->ʾˋ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v2, p1, v0, v1}, Lᵔʿ/ﹳٴ;->ﾞʻ([BII)V

    return-void
.end method

.method public final ˈ()[B
    .locals 3

    iget-object v0, p0, Lᵢᵢ/ˑﹳ;->ʾˋ:Lᵔʿ/ﹳٴ;

    invoke-virtual {v0}, Lᵔʿ/ﹳٴ;->ˑﹳ()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lᵔʿ/ﹳٴ;->ʽ(I[B)I

    return-object v1
.end method
