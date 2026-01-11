.class public abstract Lʻˈ/ᵔʾ;
.super Lʻˈ/ˉʿ;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:[Lᵎⁱ/ˈ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    const/4 v0, 0x0

    iput v0, p0, Lʻˈ/ᵔʾ;->ʽ:I

    return-void
.end method

.method public constructor <init>(Lʻˈ/ᵔʾ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    const/4 v0, 0x0

    iput v0, p0, Lʻˈ/ᵔʾ;->ʽ:I

    iget-object v0, p1, Lʻˈ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    iput-object v0, p0, Lʻˈ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    invoke-static {p1}, Lᴵˋ/ˊʻ;->ﾞʻ([Lᵎⁱ/ˈ;)[Lᵎⁱ/ˈ;

    move-result-object p1

    iput-object p1, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public getPathData()[Lᵎⁱ/ˈ;
    .locals 1

    iget-object v0, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʻˈ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lᵎⁱ/ˈ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    invoke-static {v0, p1}, Lᴵˋ/ˊʻ;->ˈ([Lᵎⁱ/ˈ;[Lᵎⁱ/ˈ;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lᴵˋ/ˊʻ;->ﾞʻ([Lᵎⁱ/ˈ;)[Lᵎⁱ/ˈ;

    move-result-object p1

    iput-object p1, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    return-void

    :cond_0
    iget-object v0, p0, Lʻˈ/ᵔʾ;->ﹳٴ:[Lᵎⁱ/ˈ;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lᵎⁱ/ˈ;->ﹳٴ:C

    iput-char v4, v3, Lᵎⁱ/ˈ;->ﹳٴ:C

    move v3, v1

    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lᵎⁱ/ˈ;->ⁱˊ:[F

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v5, v0, v2

    iget-object v5, v5, Lᵎⁱ/ˈ;->ⁱˊ:[F

    aget v4, v4, v3

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
