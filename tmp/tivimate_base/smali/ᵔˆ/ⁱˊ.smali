.class public final Lᵔˆ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[Ljava/io/File;

.field public final ˈ:[Ljava/io/File;

.field public ˑﹳ:Z

.field public final synthetic ᵎﹶ:Lᵔˆ/ʽ;

.field public final ⁱˊ:[J

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:Lcom/bumptech/glide/ʼˎ;


# direct methods
.method public constructor <init>(Lᵔˆ/ʽ;Ljava/lang/String;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔˆ/ⁱˊ;->ᵎﹶ:Lᵔˆ/ʽ;

    iput-object p2, p0, Lᵔˆ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget v0, p1, Lᵔˆ/ʽ;->ٴᵢ:I

    iget-object p1, p1, Lᵔˆ/ʽ;->ʾˋ:Ljava/io/File;

    new-array v1, v0, [J

    iput-object v1, p0, Lᵔˆ/ⁱˊ;->ⁱˊ:[J

    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lᵔˆ/ⁱˊ;->ʽ:[Ljava/io/File;

    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lᵔˆ/ⁱˊ;->ˈ:[Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lᵔˆ/ⁱˊ;->ʽ:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lᵔˆ/ⁱˊ;->ˈ:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lᵔˆ/ⁱˊ;->ⁱˊ:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
