.class public final enum Lʼʻ/ˑٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final enum ʾˋ:Lʼʻ/ˑٴ;

.field public static final synthetic ᴵˊ:[Lʼʻ/ˑٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lʼʻ/ˑٴ;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lʼʻ/ˑٴ;->ʾˋ:Lʼʻ/ˑٴ;

    const/4 v1, 0x1

    new-array v1, v1, [Lʼʻ/ˑٴ;

    aput-object v0, v1, v2

    sput-object v1, Lʼʻ/ˑٴ;->ᴵˊ:[Lʼʻ/ˑٴ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼʻ/ˑٴ;
    .locals 1

    const-class v0, Lʼʻ/ˑٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼʻ/ˑٴ;

    return-object p0
.end method

.method public static values()[Lʼʻ/ˑٴ;
    .locals 1

    sget-object v0, Lʼʻ/ˑٴ;->ᴵˊ:[Lʼʻ/ˑٴ;

    invoke-virtual {v0}, [Lʼʻ/ˑٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼʻ/ˑٴ;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/י;->ٴﹶ(Ljava/lang/String;Z)V

    return-void
.end method
