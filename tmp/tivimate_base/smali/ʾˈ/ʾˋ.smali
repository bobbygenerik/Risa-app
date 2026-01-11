.class public final Lʾˈ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lʾˈ/ᵢˏ;


# instance fields
.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʾˈ/ᵢˏ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ʾˋ;->Companion:Lʾˈ/ᵢˏ;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 2

    .prologue
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lʾˈ/ʾˋ;->ﹳٴ:I

    iput-object p3, p0, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p2, Lʾˈ/ʼʼ;->ﹳٴ:Lʾˈ/ʼʼ;

    invoke-virtual {p2}, Lʾˈ/ʼʼ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lﹶٴ/ٴﹶ;->ﹳٴ(IILˉﾞ/ˈ;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʾˈ/ʾˋ;->ﹳٴ:I

    iput-object p2, p0, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾˈ/ʾˋ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ʾˋ;

    iget v1, p0, Lʾˈ/ʾˋ;->ﹳٴ:I

    iget v3, p1, Lʾˈ/ʾˋ;->ﹳٴ:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lʾˈ/ʾˋ;->ﹳٴ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessData(pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʾˈ/ʾˋ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
