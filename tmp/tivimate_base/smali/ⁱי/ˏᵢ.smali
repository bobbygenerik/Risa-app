.class public final Lⁱי/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lⁱי/ˏᵢ;


# instance fields
.field public final ﹳٴ:Lʼʻ/ᵔٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lⁱʽ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v1

    iput-object v1, v0, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    new-instance v1, Lⁱי/ˏᵢ;

    invoke-direct {v1, v0}, Lⁱי/ˏᵢ;-><init>(Lⁱʽ/ﹳٴ;)V

    sput-object v1, Lⁱי/ˏᵢ;->ⁱˊ:Lⁱי/ˏᵢ;

    return-void
.end method

.method public constructor <init>(Lⁱʽ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lʼʻ/ᵔٴ;

    iput-object p1, p0, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lⁱי/ˏᵢ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lⁱי/ˏᵢ;

    iget-object v0, p0, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    iget-object p1, p1, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    invoke-virtual {v0, p1}, Lʼʻ/ᵔٴ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
