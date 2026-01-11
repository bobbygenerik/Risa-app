.class public final Lˎᵢ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˉʿ:Ljava/util/regex/Pattern;

.field public static final ٴﹶ:Ljava/util/regex/Pattern;

.field public static final ᵔʾ:Ljava/util/regex/Pattern;

.field public static final ﾞʻ:Ljava/util/regex/Pattern;


# instance fields
.field public final ʼˎ:Z

.field public final ʽ:J

.field public final ˆʾ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ᵎﹶ:Z

.field public final ᵔᵢ:Z

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˎᵢ/ٴﹶ;->ٴﹶ:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˎᵢ/ٴﹶ;->ﾞʻ:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˎᵢ/ٴﹶ;->ˉʿ:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˎᵢ/ٴﹶ;->ᵔʾ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    iput-wide p3, p0, Lˎᵢ/ٴﹶ;->ʽ:J

    iput-object p5, p0, Lˎᵢ/ٴﹶ;->ˈ:Ljava/lang/String;

    iput-object p6, p0, Lˎᵢ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    iput-boolean p7, p0, Lˎᵢ/ٴﹶ;->ﾞᴵ:Z

    iput-boolean p8, p0, Lˎᵢ/ٴﹶ;->ᵎﹶ:Z

    iput-boolean p9, p0, Lˎᵢ/ٴﹶ;->ᵔᵢ:Z

    iput-boolean p10, p0, Lˎᵢ/ٴﹶ;->ʼˎ:Z

    iput-object p11, p0, Lˎᵢ/ٴﹶ;->ˆʾ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    instance-of v0, p1, Lˎᵢ/ٴﹶ;

    if-eqz v0, :cond_0

    check-cast p1, Lˎᵢ/ٴﹶ;

    iget-object v0, p1, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lˎᵢ/ٴﹶ;->ʽ:J

    iget-wide v2, p0, Lˎᵢ/ٴﹶ;->ʽ:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lˎᵢ/ٴﹶ;->ˈ:Ljava/lang/String;

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lˎᵢ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lˎᵢ/ٴﹶ;->ﾞᴵ:Z

    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ﾞᴵ:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lˎᵢ/ٴﹶ;->ᵎﹶ:Z

    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ᵎﹶ:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lˎᵢ/ٴﹶ;->ᵔᵢ:Z

    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ᵔᵢ:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lˎᵢ/ٴﹶ;->ʼˎ:Z

    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ʼˎ:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lˎᵢ/ٴﹶ;->ˆʾ:Ljava/lang/String;

    iget-object v0, p0, Lˎᵢ/ٴﹶ;->ˆʾ:Ljava/lang/String;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v0, 0x20f

    const/16 v1, 0x1f

    iget-object v2, p0, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    const/16 v2, 0x20

    iget-wide v3, p0, Lˎᵢ/ٴﹶ;->ʽ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˎᵢ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lˎᵢ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lˎᵢ/ٴﹶ;->ﾞᴵ:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˎᵢ/ٴﹶ;->ᵎﹶ:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˎᵢ/ٴﹶ;->ᵔᵢ:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˎᵢ/ٴﹶ;->ʼˎ:Z

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ˆʾ:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˎᵢ/ٴﹶ;->ﹳٴ(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Z)Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ᵔᵢ:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    iget-wide v3, p0, Lˎᵢ/ٴﹶ;->ʽ:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    sget-object v2, Lʽי/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lˎᵢ/ٴﹶ;->ʼˎ:Z

    if-nez v1, :cond_3

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lˎᵢ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, "; path="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lˎᵢ/ٴﹶ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lˎᵢ/ٴﹶ;->ﾞᴵ:Z

    if-eqz p1, :cond_4

    const-string p1, "; secure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean p1, p0, Lˎᵢ/ٴﹶ;->ᵎﹶ:Z

    if-eqz p1, :cond_5

    const-string p1, "; httponly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p1, p0, Lˎᵢ/ٴﹶ;->ˆʾ:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string v1, "; samesite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
