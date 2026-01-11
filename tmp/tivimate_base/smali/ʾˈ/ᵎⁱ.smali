.class public final Lʾˈ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lʾˈ/ˉٴ;

.field public static final ˈ:[Lיʼ/ﹳٴ;


# instance fields
.field public final ʽ:Ljava/util/Map;

.field public final ⁱˊ:Lʾˈ/ـﹶ;

.field public final ﹳٴ:Lʾˈ/ᵔٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʾˈ/ˉٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ᵎⁱ;->Companion:Lʾˈ/ˉٴ;

    new-instance v0, Lﹶٴ/ᵔᵢ;

    sget-object v1, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    sget-object v1, Lʾˈ/ʼʼ;->ﹳٴ:Lʾˈ/ʼʼ;

    invoke-direct {v0, v1}, Lﹶٴ/ᵔᵢ;-><init>(Lיʼ/ﹳٴ;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lיʼ/ﹳٴ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lʾˈ/ᵎⁱ;->ˈ:[Lיʼ/ﹳٴ;

    return-void
.end method

.method public synthetic constructor <init>(ILʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V
    .locals 3

    .prologue
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v1, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v1, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    return-void

    :cond_1
    iput-object p4, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    return-void

    :cond_2
    sget-object p2, Lʾˈ/ٴᵢ;->ﹳٴ:Lʾˈ/ٴᵢ;

    invoke-virtual {p2}, Lʾˈ/ٴᵢ;->ˈ()Lˉﾞ/ˈ;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lﹶٴ/ٴﹶ;->ﹳٴ(IILˉﾞ/ˈ;)V

    throw v1
.end method

.method public constructor <init>(Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    iput-object p2, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    iput-object p3, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    return-void
.end method

.method public static ﹳٴ(Lʾˈ/ᵎⁱ;Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;I)Lʾˈ/ᵎⁱ;
    .locals 1

    .prologue
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lʾˈ/ᵎⁱ;

    invoke-direct {p0, p1, p2, p3}, Lʾˈ/ᵎⁱ;-><init>(Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lʾˈ/ᵎⁱ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lʾˈ/ᵎⁱ;

    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    iget-object v3, p1, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    iget-object v3, p1, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    invoke-static {v1, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    iget-object p1, p1, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    iget-object v0, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    invoke-virtual {v0}, Lʾˈ/ᵔٴ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lʾˈ/ـﹶ;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionData(sessionDetails="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processDataMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
