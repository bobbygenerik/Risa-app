.class public final enum Lˎᵔ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lˎᵔ/ﹳٴ;

.field public static final synthetic ˈٴ:[Lˎᵔ/ﹳٴ;

.field public static final enum ᴵˊ:Lˎᵔ/ﹳٴ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lˎᵔ/ﹳٴ;

    const/4 v1, 0x0

    const-string v2, "PRIMITIVE"

    invoke-direct {v0, v1, v1, v2}, Lˎᵔ/ﹳٴ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lˎᵔ/ﹳٴ;->ᴵˊ:Lˎᵔ/ﹳٴ;

    new-instance v2, Lˎᵔ/ﹳٴ;

    const/16 v3, 0x20

    const/4 v4, 0x1

    const-string v5, "CONSTRUCTED"

    invoke-direct {v2, v4, v3, v5}, Lˎᵔ/ﹳٴ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    const/4 v3, 0x2

    new-array v3, v3, [Lˎᵔ/ﹳٴ;

    aput-object v0, v3, v1

    aput-object v2, v3, v4

    sput-object v3, Lˎᵔ/ﹳٴ;->ˈٴ:[Lˎᵔ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lˎᵔ/ﹳٴ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˎᵔ/ﹳٴ;
    .locals 1

    const-class v0, Lˎᵔ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˎᵔ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lˎᵔ/ﹳٴ;
    .locals 1

    sget-object v0, Lˎᵔ/ﹳٴ;->ˈٴ:[Lˎᵔ/ﹳٴ;

    invoke-virtual {v0}, [Lˎᵔ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˎᵔ/ﹳٴ;

    return-object v0
.end method
