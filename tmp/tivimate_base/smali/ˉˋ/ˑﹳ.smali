.class public final Lˉˋ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿˑ/ʽ;


# static fields
.field public static final ﹳٴ:Lˉˋ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˉˋ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˉˋ/ˑﹳ;->ﹳٴ:Lˉˋ/ˑﹳ;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lʿˑ/ⁱˊ;->ﹳٴ(Ljava/lang/String;)Lʿˑ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˈ(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method
