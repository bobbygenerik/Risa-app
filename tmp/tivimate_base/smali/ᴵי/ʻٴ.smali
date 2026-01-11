.class public final Lᴵי/ʻٴ;
.super Lˈי/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final ᴵˊ:Lᴵי/ʽﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᴵי/ʽﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵי/ʻٴ;->ᴵˊ:Lᴵי/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lᴵי/ʻٴ;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x42793e16

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CoroutineName(Room Invalidation Tracker Refresh)"

    return-object v0
.end method
