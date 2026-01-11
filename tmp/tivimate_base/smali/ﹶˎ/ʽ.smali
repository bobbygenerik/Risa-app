.class public final Lﹶˎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:[I


# instance fields
.field public ʽ:Z

.field public ⁱˊ:Lˋⁱ/ﾞᴵ;

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lﹶˎ/ʽ;->ˈ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶˎ/ʽ;->ﹳٴ:I

    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    return-void
.end method

.method public static ﹳٴ(ILjava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x7

    sget-object v2, Lﹶˎ/ʽ;->ˈ:[I

    invoke-static {v2, p0, v0, v1}, Lˈˊ/ˉˆ;->ʽﹳ([IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lʽⁱ/ﹳᐧ;)Lʽⁱ/ﹳᐧ;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹶˎ/ʽ;->ʽ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v0

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    const-string v2, "application/x-media3-cues"

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v2, p0, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v2, p1}, Lˋⁱ/ﾞᴵ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v2

    iput v2, v0, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string p1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_1
    return-object p1
.end method
