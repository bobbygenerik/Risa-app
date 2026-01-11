.class public final enum Lcom/bumptech/glide/ᵎﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

.field public static final enum ʾˋ:Lcom/bumptech/glide/ᵎﹶ;

.field public static final enum ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

.field public static final enum ᴵˊ:Lcom/bumptech/glide/ᵎﹶ;

.field public static final synthetic ᴵᵔ:[Lcom/bumptech/glide/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/bumptech/glide/ᵎﹶ;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/ᵎﹶ;->ʾˋ:Lcom/bumptech/glide/ᵎﹶ;

    new-instance v1, Lcom/bumptech/glide/ᵎﹶ;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/ᵎﹶ;->ᴵˊ:Lcom/bumptech/glide/ᵎﹶ;

    new-instance v3, Lcom/bumptech/glide/ᵎﹶ;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bumptech/glide/ᵎﹶ;->ʽʽ:Lcom/bumptech/glide/ᵎﹶ;

    new-instance v5, Lcom/bumptech/glide/ᵎﹶ;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bumptech/glide/ᵎﹶ;->ˈٴ:Lcom/bumptech/glide/ᵎﹶ;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bumptech/glide/ᵎﹶ;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bumptech/glide/ᵎﹶ;->ᴵᵔ:[Lcom/bumptech/glide/ᵎﹶ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/ᵎﹶ;
    .locals 1

    const-class v0, Lcom/bumptech/glide/ᵎﹶ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/ᵎﹶ;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/ᵎﹶ;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/ᵎﹶ;->ᴵᵔ:[Lcom/bumptech/glide/ᵎﹶ;

    invoke-virtual {v0}, [Lcom/bumptech/glide/ᵎﹶ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/ᵎﹶ;

    return-object v0
.end method
