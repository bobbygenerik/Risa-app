.class public final Lˆי/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˆי/ᵔᵢ;


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˆי/ᵔᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lˆי/ᵔᵢ;-><init>(II)V

    sput-object v0, Lˆי/ᵔᵢ;->ʽ:Lˆי/ᵔᵢ;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˆי/ᵔᵢ;->ﹳٴ:I

    iput p2, p0, Lˆי/ᵔᵢ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lˆי/ᵔᵢ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˆי/ᵔᵢ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˆי/ᵔᵢ;->ⁱˊ:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
