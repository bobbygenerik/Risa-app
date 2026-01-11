.class public final Lʽⁱ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʽⁱ/ˑﹳ;


# instance fields
.field public ⁱˊ:Lﹳי/ʽ;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʽⁱ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʽⁱ/ˑﹳ;-><init>(I)V

    sput-object v0, Lʽⁱ/ˑﹳ;->ʽ:Lʽⁱ/ˑﹳ;

    const/4 v0, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v1, v3, v4, v0, v2}, Lʼﾞ/ˊˋ;->ـˆ(IIIII)V

    const/4 v0, 0x5

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class v1, Lʽⁱ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ˑﹳ;

    iget v1, p0, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    iget p1, p1, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x3c1

    return v0
.end method

.method public final ﹳٴ()Lﹳי/ʽ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʽⁱ/ˑﹳ;->ⁱˊ:Lﹳי/ʽ;

    if-nez v0, :cond_2

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v2, p0, Lʽⁱ/ˑﹳ;->ﹳٴ:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    invoke-static {v1}, Lʼˉ/ʽ;->ˉʿ(Landroid/media/AudioAttributes$Builder;)V

    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    invoke-static {v1}, Lʽⁱ/ˈ;->ⁱˊ(Landroid/media/AudioAttributes$Builder;)V

    invoke-static {v1}, Lʽⁱ/ˈ;->ﹳٴ(Landroid/media/AudioAttributes$Builder;)V

    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object v0, p0, Lʽⁱ/ˑﹳ;->ⁱˊ:Lﹳי/ʽ;

    :cond_2
    iget-object v0, p0, Lʽⁱ/ˑﹳ;->ⁱˊ:Lﹳי/ʽ;

    return-object v0
.end method
