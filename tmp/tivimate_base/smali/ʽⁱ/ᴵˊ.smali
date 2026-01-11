.class public final Lʽⁱ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lʽⁱ/ʾᵎ;

.field public final ˈ:Lʽⁱ/ᴵᵔ;

.field public final ˑﹳ:Lʽⁱ/ʻٴ;

.field public final ⁱˊ:Lʽⁱ/ʼʼ;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Lʽⁱ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Lʽⁱ/ˏי;-><init>()V

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    new-instance v1, Lʽⁱ/ـˆ;

    invoke-direct {v1}, Lʽⁱ/ـˆ;-><init>()V

    sget-object v2, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    invoke-virtual {v0}, Lʽⁱ/ˏי;->ﹳٴ()Lʽⁱ/ʻٴ;

    invoke-virtual {v1}, Lʽⁱ/ـˆ;->ﹳٴ()Lʽⁱ/ʾᵎ;

    sget-object v0, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lʽⁱ/ʻٴ;Lʽⁱ/ʼʼ;Lʽⁱ/ʾᵎ;Lʽⁱ/ᴵᵔ;Lʽⁱ/ᵢˏ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽⁱ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    iput-object p3, p0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iput-object p4, p0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    iput-object p5, p0, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    iput-object p2, p0, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    iput-object p6, p0, Lʽⁱ/ᴵˊ;->ﾞᴵ:Lʽⁱ/ᵢˏ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lʽⁱ/ᴵˊ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lʽⁱ/ᴵˊ;

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p1, Lʽⁱ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    iget-object v1, p1, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    invoke-virtual {v0, v1}, Lʽⁱ/ʽﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    iget-object v1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    iget-object v1, p1, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    invoke-virtual {v0, v1}, Lʽⁱ/ʾᵎ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    iget-object v1, p1, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ﾞᴵ:Lʽⁱ/ᵢˏ;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ﾞᴵ:Lʽⁱ/ᵢˏ;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lʽⁱ/ʼʼ;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    invoke-virtual {v1}, Lʽⁱ/ʾᵎ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ˑﹳ:Lʽⁱ/ʻٴ;

    invoke-virtual {v0}, Lʽⁱ/ʽﹳ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v1}, Lʽⁱ/ᴵᵔ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʽⁱ/ᴵˊ;->ﾞᴵ:Lʽⁱ/ᵢˏ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method
