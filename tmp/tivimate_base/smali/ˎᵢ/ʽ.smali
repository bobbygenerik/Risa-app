.class public final Lˎᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ᵔʾ:I


# instance fields
.field public final ʼˎ:I

.field public final ʽ:I

.field public final ˆʾ:Z

.field public final ˈ:I

.field public ˉʿ:Ljava/lang/String;

.field public final ˑﹳ:Z

.field public final ٴﹶ:Z

.field public final ᵎﹶ:Z

.field public final ᵔᵢ:I

.field public final ⁱˊ:Z

.field public final ﹳٴ:Z

.field public final ﾞʻ:Z

.field public final ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    sget v0, Lᐧˊ/ﹳٴ;->ˈٴ:I

    sget-object v0, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    const v1, 0x7fffffff

    invoke-static {v1, v0}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "maxStale < 0: "

    invoke-static {v2, v0, v1}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lˎᵢ/ʽ;->ﹳٴ:Z

    iput-boolean p2, p0, Lˎᵢ/ʽ;->ⁱˊ:Z

    iput p3, p0, Lˎᵢ/ʽ;->ʽ:I

    iput p4, p0, Lˎᵢ/ʽ;->ˈ:I

    iput-boolean p5, p0, Lˎᵢ/ʽ;->ˑﹳ:Z

    iput-boolean p6, p0, Lˎᵢ/ʽ;->ﾞᴵ:Z

    iput-boolean p7, p0, Lˎᵢ/ʽ;->ᵎﹶ:Z

    iput p8, p0, Lˎᵢ/ʽ;->ᵔᵢ:I

    iput p9, p0, Lˎᵢ/ʽ;->ʼˎ:I

    iput-boolean p10, p0, Lˎᵢ/ʽ;->ˆʾ:Z

    iput-boolean p11, p0, Lˎᵢ/ʽ;->ٴﹶ:Z

    iput-boolean p12, p0, Lˎᵢ/ʽ;->ﾞʻ:Z

    iput-object p13, p0, Lˎᵢ/ʽ;->ˉʿ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lˎᵢ/ʽ;->ˉʿ:Ljava/lang/String;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lˎᵢ/ʽ;->ﹳٴ:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lˎᵢ/ʽ;->ⁱˊ:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", "

    const/4 v2, -0x1

    iget v3, p0, Lˎᵢ/ʽ;->ʽ:I

    if-eq v3, v2, :cond_2

    const-string v4, "max-age="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v3, p0, Lˎᵢ/ʽ;->ˈ:I

    if-eq v3, v2, :cond_3

    const-string v4, "s-maxage="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v3, p0, Lˎᵢ/ʽ;->ˑﹳ:Z

    if-eqz v3, :cond_4

    const-string v3, "private, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v3, p0, Lˎᵢ/ʽ;->ﾞᴵ:Z

    if-eqz v3, :cond_5

    const-string v3, "public, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v3, p0, Lˎᵢ/ʽ;->ᵎﹶ:Z

    if-eqz v3, :cond_6

    const-string v3, "must-revalidate, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v3, p0, Lˎᵢ/ʽ;->ᵔᵢ:I

    if-eq v3, v2, :cond_7

    const-string v4, "max-stale="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v3, p0, Lˎᵢ/ʽ;->ʼˎ:I

    if-eq v3, v2, :cond_8

    const-string v2, "min-fresh="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-boolean v1, p0, Lˎᵢ/ʽ;->ˆʾ:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v1, p0, Lˎᵢ/ʽ;->ٴﹶ:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-boolean v1, p0, Lˎᵢ/ʽ;->ﾞʻ:Z

    if-eqz v1, :cond_b

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˎᵢ/ʽ;->ˉʿ:Ljava/lang/String;

    :cond_d
    return-object v0
.end method
