.class public final enum Lᴵˋ/ٴﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum ʾˋ:Lᴵˋ/ٴﹶ;

.field public static final synthetic ᴵˊ:[Lᴵˋ/ٴﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lᴵˋ/ٴﹶ;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lᴵˋ/ٴﹶ;->ʾˋ:Lᴵˋ/ٴﹶ;

    const/4 v1, 0x1

    new-array v1, v1, [Lᴵˋ/ٴﹶ;

    aput-object v0, v1, v2

    sput-object v1, Lᴵˋ/ٴﹶ;->ᴵˊ:[Lᴵˋ/ٴﹶ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵˋ/ٴﹶ;
    .locals 1

    const-class v0, Lᴵˋ/ٴﹶ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵˋ/ٴﹶ;

    return-object p0
.end method

.method public static values()[Lᴵˋ/ٴﹶ;
    .locals 1

    sget-object v0, Lᴵˋ/ٴﹶ;->ᴵˊ:[Lᴵˋ/ٴﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵˋ/ٴﹶ;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectExecutor"

    return-object v0
.end method
