.class public final enum Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum RAW:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

.field public static final enum WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;


# instance fields
.field public final ʾˋ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v1, 0x0

    const-string v2, "GIF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const-string v4, "JPEG"

    invoke-direct {v2, v3, v4, v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v5, 0x2

    const-string v6, "RAW"

    invoke-direct {v4, v5, v6, v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->RAW:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v7, 0x3

    const-string v8, "PNG_A"

    invoke-direct {v6, v7, v8, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v6, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v9, 0x4

    const-string v10, "PNG"

    invoke-direct {v8, v9, v10, v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v11, 0x5

    const-string v12, "WEBP_A"

    invoke-direct {v10, v11, v12, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v12, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v13, 0x6

    const-string v14, "WEBP"

    invoke-direct {v12, v13, v14, v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v12, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/4 v15, 0x7

    move/from16 v16, v5

    const-string v5, "ANIMATED_WEBP"

    invoke-direct {v14, v15, v5, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move/from16 v17, v7

    const/16 v7, 0x8

    move/from16 v18, v9

    const-string v9, "AVIF"

    invoke-direct {v5, v7, v9, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move/from16 v19, v7

    const/16 v7, 0x9

    move/from16 v20, v11

    const-string v11, "ANIMATED_AVIF"

    invoke-direct {v9, v7, v11, v3}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v9, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    new-instance v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move/from16 v21, v3

    const/16 v3, 0xa

    move/from16 v22, v7

    const-string v7, "UNKNOWN"

    invoke-direct {v11, v3, v7, v1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;-><init>(ILjava/lang/String;Z)V

    sput-object v11, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    const/16 v7, 0xb

    new-array v7, v7, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    aput-object v0, v7, v1

    aput-object v2, v7, v21

    aput-object v4, v7, v16

    aput-object v6, v7, v17

    aput-object v8, v7, v18

    aput-object v10, v7, v20

    aput-object v12, v7, v13

    aput-object v14, v7, v15

    aput-object v5, v7, v19

    aput-object v9, v7, v22

    aput-object v11, v7, v3

    sput-object v7, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ʾˋ:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ʾˋ:Z

    return v0
.end method

.method public isWebp()Z
    .locals 3

    .prologue
    sget-object v0, Lʼᵔ/ʽ;->ﹳٴ:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
