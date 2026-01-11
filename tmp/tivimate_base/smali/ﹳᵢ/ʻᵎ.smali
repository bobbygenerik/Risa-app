.class public final Lﹳᵢ/ʻᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lﹳᵢ/ʻᵎ;


# instance fields
.field public ʽ:I

.field public final ⁱˊ:Lʼʻ/ʿᵢ;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lﹳᵢ/ʻᵎ;

    const/4 v1, 0x0

    new-array v2, v1, [Lʽⁱ/ـˏ;

    invoke-direct {v0, v2}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    sput-object v0, Lﹳᵢ/ʻᵎ;->ˈ:Lﹳᵢ/ʻᵎ;

    invoke-static {v1}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public varargs constructor <init>([Lʽⁱ/ـˏ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ﾞʻ([Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    iput-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    array-length p1, p1

    iput p1, p0, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    const/4 p1, 0x0

    :goto_0
    iget v1, v0, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge p1, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    move v2, v1

    :goto_1
    iget v3, v0, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, p1}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽⁱ/ـˏ;

    invoke-virtual {v0, v2}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lʽⁱ/ـˏ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lﹳᵢ/ʻᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lﹳᵢ/ʻᵎ;

    iget v0, p0, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    iget v1, p1, Lﹳᵢ/ʻᵎ;->ﹳٴ:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    iget-object p1, p1, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, p1}, Lʼʻ/ᵎⁱ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lﹳᵢ/ʻᵎ;->ʽ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0}, Lʼʻ/ᵎⁱ;->hashCode()I

    move-result v0

    iput v0, p0, Lﹳᵢ/ʻᵎ;->ʽ:I

    :cond_0
    iget v0, p0, Lﹳᵢ/ʻᵎ;->ʽ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Lʽⁱ/ـˏ;)I
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, p1}, Lʼʻ/ᵎⁱ;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ﹳٴ(I)Lʽⁱ/ـˏ;
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ʻᵎ;->ⁱˊ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, p1}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽⁱ/ـˏ;

    return-object p1
.end method
