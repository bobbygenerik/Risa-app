.class public final Lʽʿ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lʽʿ/ˉʿ;


# instance fields
.field public final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʽʿ/ˉʿ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʽʿ/ᵔʾ;->ⁱˊ:Lʽʿ/ˉʿ;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lʽʿ/ᵔʾ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lʽʿ/ᵔʾ;

    iget-object p1, p1, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    iget-object v0, p0, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽʿ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    instance-of v1, v0, Lʽʿ/ﾞʻ;

    if-eqz v1, :cond_0

    check-cast v0, Lʽʿ/ﾞʻ;

    invoke-virtual {v0}, Lʽʿ/ﾞʻ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
