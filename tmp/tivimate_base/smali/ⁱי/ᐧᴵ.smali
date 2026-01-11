.class public final Lⁱי/ᐧᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lⁱי/ᐧᴵ;


# instance fields
.field public final ⁱˊ:Z

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱי/ᐧᴵ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lⁱי/ᐧᴵ;-><init>(IZ)V

    sput-object v0, Lⁱי/ᐧᴵ;->ʽ:Lⁱי/ᐧᴵ;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lⁱי/ᐧᴵ;->ﹳٴ:I

    iput-boolean p2, p0, Lⁱי/ᐧᴵ;->ⁱˊ:Z

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

    const-class v0, Lⁱי/ᐧᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lⁱי/ᐧᴵ;

    iget v0, p0, Lⁱי/ᐧᴵ;->ﹳٴ:I

    iget v1, p1, Lⁱי/ᐧᴵ;->ﹳٴ:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lⁱי/ᐧᴵ;->ⁱˊ:Z

    iget-boolean p1, p1, Lⁱי/ᐧᴵ;->ⁱˊ:Z

    if-ne v0, p1, :cond_2

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

    iget v0, p0, Lⁱי/ᐧᴵ;->ﹳٴ:I

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lⁱי/ᐧᴵ;->ⁱˊ:Z

    add-int/2addr v0, v1

    return v0
.end method
