.class public final enum Lʾˈ/ˉʿ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lˆˉ/ﾞᴵ;


# static fields
.field public static final synthetic ʽʽ:[Lʾˈ/ˉʿ;

.field public static final enum ᴵˊ:Lʾˈ/ˉʿ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʾˈ/ˉʿ;

    const/4 v1, 0x0

    const-string v2, "EVENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lʾˈ/ˉʿ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lʾˈ/ˉʿ;

    const/4 v3, 0x1

    const-string v4, "SESSION_START"

    invoke-direct {v2, v3, v3, v4}, Lʾˈ/ˉʿ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lʾˈ/ˉʿ;->ᴵˊ:Lʾˈ/ˉʿ;

    const/4 v4, 0x2

    new-array v4, v4, [Lʾˈ/ˉʿ;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lʾˈ/ˉʿ;->ʽʽ:[Lʾˈ/ˉʿ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lʾˈ/ˉʿ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʾˈ/ˉʿ;
    .locals 1

    const-class v0, Lʾˈ/ˉʿ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʾˈ/ˉʿ;

    return-object p0
.end method

.method public static values()[Lʾˈ/ˉʿ;
    .locals 1

    sget-object v0, Lʾˈ/ˉʿ;->ʽʽ:[Lʾˈ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʾˈ/ˉʿ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lʾˈ/ˉʿ;->ʾˋ:I

    return v0
.end method
