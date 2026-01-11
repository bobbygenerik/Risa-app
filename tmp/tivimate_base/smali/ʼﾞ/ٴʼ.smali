.class public final Lʼﾞ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼﹶ/ﾞᴵ;
.implements Lʼﹶ/ˑﹳ;


# static fields
.field public static final ˉٴ:Ljava/util/TreeMap;


# instance fields
.field public final ʽʽ:[D

.field public volatile ʾˋ:Ljava/lang/String;

.field public final ˈٴ:[Ljava/lang/String;

.field public final ˊʻ:[I

.field public ٴᵢ:I

.field public final ᴵˊ:[J

.field public final ᴵᵔ:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lʼﾞ/ٴʼ;->ˉٴ:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lʼﾞ/ٴʼ;->ᴵˊ:[J

    new-array v1, v0, [D

    iput-object v1, p0, Lʼﾞ/ٴʼ;->ʽʽ:[D

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lʼﾞ/ٴʼ;->ˈٴ:[Ljava/lang/String;

    new-array v0, v0, [[B

    iput-object v0, p0, Lʼﾞ/ٴʼ;->ᴵᵔ:[[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final ʻٴ(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˈٴ:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼﾞ/ٴʼ;->ʾˋ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ(Lʼﹶ/ˑﹳ;)V
    .locals 6

    .prologue
    iget v0, p0, Lʼﾞ/ٴʼ;->ٴᵢ:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_7

    move v2, v1

    :goto_0
    iget-object v3, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    const-string v5, "Required value was null."

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lʼﾞ/ٴʼ;->ᴵᵔ:[[B

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    invoke-interface {p1, v2, v3}, Lʼﹶ/ˑﹳ;->ᵔᵢ(I[B)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v3, p0, Lʼﾞ/ٴʼ;->ˈٴ:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    invoke-interface {p1, v2, v3}, Lʼﹶ/ˑﹳ;->ʻٴ(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v3, p0, Lʼﾞ/ٴʼ;->ʽʽ:[D

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Lʼﹶ/ˑﹳ;->ⁱˊ(ID)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lʼﾞ/ٴʼ;->ᴵˊ:[J

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto :goto_1

    :cond_6
    invoke-interface {p1, v2}, Lʼﹶ/ˑﹳ;->ﹳٴ(I)V

    :goto_1
    if-eq v2, v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final ᵔᵢ(I[B)V
    .locals 2

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ᴵᵔ:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public final ⁱˊ(ID)V
    .locals 2

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ʽʽ:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public final ﹳٴ(I)V
    .locals 2

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public final ﾞᴵ(IJ)V
    .locals 2

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ˊʻ:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Lʼﾞ/ٴʼ;->ᴵˊ:[J

    aput-wide p2, v0, p1

    return-void
.end method
